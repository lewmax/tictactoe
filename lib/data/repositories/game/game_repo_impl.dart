import 'package:chat_app/core/utils/mixins/board_size_mixin.dart';
import 'package:chat_app/data/core/mixins/repository_validation_mixin.dart';
import 'package:chat_app/data/datasources/game/game_data_source.dart';
import 'package:chat_app/data/remote/network_response.dart';
import 'package:chat_app/domain/dtos/game/cell_dto.dart';
import 'package:chat_app/domain/dtos/game/fetch_recent_games_response.dart';
import 'package:chat_app/domain/dtos/game/game_dto.dart';
import 'package:chat_app/domain/dtos/game/game_user_dto.dart';
import 'package:chat_app/domain/dtos/game/join_game_response.dart';
import 'package:chat_app/domain/dtos/game/make_move_dto.dart';
import 'package:chat_app/domain/entities/game/cell.dart';
import 'package:chat_app/domain/entities/game/cell_id.dart';
import 'package:chat_app/domain/entities/game/game.dart';
import 'package:chat_app/domain/entities/game/game_user.dart';
import 'package:chat_app/domain/entities/user/user.dart';
import 'package:chat_app/domain/models/game/game_status.dart';
import 'package:chat_app/domain/repositories/auth/auth_repo.dart';
import 'package:chat_app/domain/repositories/game/game_repo.dart';
import 'package:chat_app/domain/repositories/game/recent_game_users_repo.dart';
import 'package:chat_app/domain/repositories/referal/referal_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:useful_extensions/useful_extensions.dart';

@LazySingleton(as: GameRepo)
final class GameRepoImpl extends RepositoryValidationMixin with BoardSizeMixin implements GameRepo {
  final GameDataSource _gameDataSource;
  final AuthRepo _authRepo;
  final ReferalRepo _referalRepository;
  final RecentGameUsersRepo _recentGameUsersRepo;

  GameRepoImpl({
    required GameDataSource gameDataSource,
    required AuthRepo authRepo,
    required ReferalRepo referalRepository,
    required RecentGameUsersRepo recentGameUsersRepo,
  })  : _gameDataSource = gameDataSource,
        _authRepo = authRepo,
        _referalRepository = referalRepository,
        _recentGameUsersRepo = recentGameUsersRepo;

  //Games cached
  final _activeGame = BehaviorSubject<GameId?>();
  final _gamesInProgress = BehaviorSubject<Map<GameId, Game>>();
  final _recentGames = BehaviorSubject<Map<GameId, Game>>();

  @override
  ValueStream<GameId?> get activeGameIdStream => _activeGame.stream;

  @override
  ValueStream<Map<GameId, Game>> get gamesInProgressStream => _gamesInProgress.stream;

  @override
  ValueStream<Map<GameId, Game>> get recentGamesStream => _recentGames.stream;

  @override
  void joinedGame(GameId gameId) {
    _activeGame.add(gameId);
  }

  @override
  void leaveGame() {
    _activeGame.add(null);
  }

  @override
  void clearGameRepo() {
    _activeGame.add(null);
    _gamesInProgress.add({});
    _recentGames.add({});
  }

  @override
  Future<NetworkResponse<JoinGameResponse>> createNewGame() async {
    return validateAuthFuture(
      authRepo: _authRepo,
      handleError: true,
      func: (user) async {
        final myUser = GameUser.fromUser(user, true, true);
        final deepLink = await _referalRepository.createUrl();

        if (deepLink == null) return NetworkResponse.success(const JoinGameResponseCreateUrlFailed());

        final game = Game(
          id: deepLink.gameId,
          url: deepLink.url,
          myUser: myUser,
          gameStatus: GameStatus.notStarted,
          createdAt: DateTime.now(),
          endedAt: null,
          teammateUser: null,
          winnerId: null,
          boardMap: const {},
        );

        await _gameDataSource.createGame(GameDto.fromDomain(game));
        final newMap = Map.of(_gamesInProgress.valueOrNull ?? <GameId, Game>{});
        newMap[game.id] = game;
        _gamesInProgress.add(newMap);
        return NetworkResponse.success(JoinGameResponseSuccess(game: game, isInitial: true));
      },
    );
  }

  @override
  Future<NetworkResponse<JoinGameResponse>> joinGameById(GameId gameId) async {
    return validateAuthFuture(
      authRepo: _authRepo,
      handleError: true,
      func: (user) async {
        final gameDto = await _gameDataSource.getGameById(gameId);
        if (gameDto == null) return NetworkResponse.failure('Game not found');

        if (gameDto.gameStatus.isNotAvailableAnymore) {
          return NetworkResponse.success(const JoinGameResponseGameIsFinished());
        }

        if (gameDto.owner.id == user.id) {
          return _handleOwnerJoining(gameDto);
        } else if (gameDto.opponent?.id == null) {
          return _handleTeammateJoining(gameDto, user);
        } else if (gameDto.opponent?.id == user.id) {
          return _handleExistingTeammate(gameDto);
        } else {
          return NetworkResponse.success(const JoinGameResponseGameIsFull());
        }
      },
    );
  }

  @override
  Stream<Game> fetchGame(GameId id) {
    return _gameDataSource.fetchGame(id).whereNotNull().asyncMap((dto) async {
      Game? game = await _dtoToDomainForMyUser(dto);
      //retry if game is null
      game ??= await _dtoToDomainForMyUser(dto);

      if (game == null) return null;

      final newMap = Map.of(_gamesInProgress.valueOrNull ?? <GameId, Game>{});
      newMap[game.id] = game;
      _gamesInProgress.add(newMap);

      return game;
    }).whereNotNull();
  }

  @override
  Stream<FetchRecentGamesResponse> fetchRecentGames() {
    final user = _authRepo.user;
    if (user == null) return Stream.value(FetchRecentGamesResponse({}, {}));
    // if (user == null) throw Exception('Not authorized');

    return _gameDataSource.fetchRecentGamesForUser(user.id).whereNotNull().asyncMap(_placeGameDtosInBuckets);
  }

  @override
  Future<NetworkResponse<void>> makeMove(MakeMoveDto dto) async {
    return validateAuthFuture(
      authRepo: _authRepo,
      handleError: true,
      func: (user) async {
        final boardDtos = Map.fromEntries(
          dto.boardMap.values.nonNulls.map((cell) => MapEntry(cell.cellId, CellDto.fromDomain(cell))),
        );

        await _gameDataSource.updateGameBoard(
          id: dto.gameId,
          board: boardDtos,
          gameStatus: dto.gameStatus,
          endedAt: dto is MakeMoveFinishDto ? dto.endedAt : null,
          winnerId: dto is MakeMoveFinishDto ? dto.winnerId : null,
        );

        return NetworkResponse.success(null);
      },
    );
  }

  @override
  Future<NetworkResponse<void>> terminateGame({required GameId id}) async {
    return handleRequest(
      () async {
        await _gameDataSource.terminateGame(id: id, endedAt: DateTime.now().toUtc());
        return NetworkResponse.success(null);
      },
    );
  }
}

extension _GameRepoImpl on GameRepoImpl {
  Future<Game?> _dtoToDomainForMyUser(GameDto dto) async {
    final owner = (await _recentGameUsersRepo.getUserFromBucket(dto.owner.id))?.user ?? User.empty(dto.owner.id);
    final teammate = await dto.opponent?.id
        .let((id) async => (await _recentGameUsersRepo.getUserFromBucket(id))?.user ?? User.empty(id));

    final myUser = _authRepo.user;
    if (myUser == null) return null;

    final isMyUserOwner = dto.owner.id == myUser.id;

    final myGameUser = GameUser.fromUser(myUser, isMyUserOwner, _isCurrTurnOfUser(dto.gameStatus, isMyUserOwner));
    final teamateGameUser = (isMyUserOwner ? teammate : owner)
        ?.let((user) => GameUser.fromUser(user, !isMyUserOwner, _isCurrTurnOfUser(dto.gameStatus, !isMyUserOwner)));

    final boardMap = _boardMapFromDto(dto.boardMap, myUser.id);

    final fullBoardMap = generateFullBoard(boardMap);

    return Game(
      id: dto.id,
      url: dto.url,
      createdAt: dto.timeCreatedAt,
      endedAt: dto.timeEndedAt,
      myUser: myGameUser,
      teammateUser: teamateGameUser,
      gameStatus: dto.gameStatus,
      winnerId: dto.winnerId,
      boardMap: fullBoardMap,
    );
  }

  Map<CellId, Cell> _boardMapFromDto(Map<CellId, CellDto> boardMap, UserId myUserId) {
    return boardMap.map(
      (id, dto) => MapEntry(
        id,
        dto.winnerId == null
            ? Cell(cellId: dto.id, cellState: dto.cellState)
            : WinnerCell(cellId: dto.id, cellState: dto.cellState, winnerId: dto.winnerId!),
      ),
    );
  }

  bool _isCurrTurnOfUser(GameStatus gameStatus, bool isOwner) =>
      (isOwner && (gameStatus == GameStatus.teamateJoined || gameStatus == GameStatus.ownerTurn)) ||
      !isOwner && (gameStatus == GameStatus.teamateTurn);

  Future<NetworkResponse<JoinGameResponse>> _handleOwnerJoining(GameDto gameDto) async {
    final game = await _dtoToDomainForMyUser(gameDto);
    if (game == null) return NetworkResponse.failure('Game not found');

    return NetworkResponse.success(JoinGameResponseSuccess(game: game, isInitial: false));
  }

  Future<NetworkResponse<JoinGameResponse>> _handleTeammateJoining(GameDto gameDto, User user) async {
    final updatedGameDto = gameDto.copyWith(
      opponent: GameUserDto.fromDomain(GameUser.fromUser(user, false, false)),
      gameStatus: GameStatus.teamateJoined,
    );
    await _gameDataSource.updateGame(updatedGameDto);
    final game = await _dtoToDomainForMyUser(updatedGameDto);
    if (game == null) return NetworkResponse.failure('Game not found');
    return NetworkResponse.success(JoinGameResponseSuccess(game: game, isInitial: true));
  }

  Future<NetworkResponse<JoinGameResponse>> _handleExistingTeammate(GameDto gameDto) async {
    final game = await _dtoToDomainForMyUser(gameDto);
    if (game == null) return NetworkResponse.failure('Game not found');

    return NetworkResponse.success(JoinGameResponseSuccess(game: game, isInitial: false));
  }

  Future<FetchRecentGamesResponse> _placeGameDtosInBuckets(List<GameDto> gamesDtos) async {
    final Map<GameId, Game> inprogress = {};
    final Map<GameId, Game> recent = {};

    for (final dto in gamesDtos) {
      final game = await _dtoToDomainForMyUser(dto);
      if (game == null) continue;

      if (game.gameStatus.isNotAvailableAnymore) {
        recent[game.id] = game;
      } else {
        inprogress[game.id] = game;
      }
    }

    _gamesInProgress.add(inprogress);
    _recentGames.add(recent);

    return FetchRecentGamesResponse(inprogress, recent);
  }
}
