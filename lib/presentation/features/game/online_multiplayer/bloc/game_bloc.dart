import 'dart:async';

import 'package:chat_app/data/remote/network_response.dart';
import 'package:chat_app/domain/dtos/game/join_game_response.dart';
import 'package:chat_app/domain/dtos/game/make_move_dto.dart';
import 'package:chat_app/domain/entities/game/cell.dart';
import 'package:chat_app/domain/entities/game/cell_id.dart';
import 'package:chat_app/domain/entities/game/game.dart';
import 'package:chat_app/domain/entities/game/game_user.dart';
import 'package:chat_app/domain/entities/referal/deep_link.dart';
import 'package:chat_app/domain/entities/user/user.dart';
import 'package:chat_app/domain/models/game/cell_state.dart';
import 'package:chat_app/domain/models/game/game_error.dart';
import 'package:chat_app/domain/models/game/game_status.dart';
import 'package:chat_app/domain/models/game/game_warning.dart';
import 'package:chat_app/domain/repositories/auth/auth_repo.dart';
import 'package:chat_app/domain/repositories/game/game_repo.dart';
import 'package:chat_app/presentation/common/mixins/game_validation_mixin.dart';
import 'package:chat_app/presentation/features/game/utils/board_size_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:useful_extensions/useful_extensions.dart';

part 'game_bloc.freezed.dart';
part 'game_event.dart';
part 'game_state.dart';

final _boardSizeManager = BoardSizeManager();

@Injectable()
class GameBloc extends Bloc<GameEvent, GameState> with GameValidationMixin {
  final GameRepo _gameRepo;
  final AuthRepo _authRepo;
  GameId? _gameId;
  bool isMyUserOwner = false;
  GameDeepLink? gameUrl;
  bool _isInitialGameFetch = true;

  final _subscriptions = <StreamSubscription>[];

  User? get _user => _authRepo.user;

  GameBloc(this._gameRepo, this._authRepo, @factoryParam this._gameId)
      : super(
          GameState.initial(
            board: _boardSizeManager.generateEmptyBoard(_boardSizeManager.boardAxisLength),
            myUser: _authRepo.user!.let(
              (u) => GameUser(id: u.id, name: u.name, imageUrl: u.imageUrl, isOwner: false, isMyNextTurn: false),
            ),
            showInviteDialog: false,
            teammateUser: null,
          ),
        ) {
    on<GameEvent>(
      (event, emit) => event.map(
        fetchGame: (event) => _onFetchGame(event, emit),
        gameUpdated: (event) => _onGameUpdated(event, emit),
        terminateGame: (event) => _onTerminateGame(event, emit),
        makeMove: (event) => _onMakeMove(event, emit),
      ),
    );

    add(const GameEvent.fetchGame());
  }

  @override
  Future<void> close() async {
    super.close();
    _gameRepo.leaveGame();
    for (final element in _subscriptions) {
      await element.cancel();
    }
  }

  Future<void> _subscribeToGameEvents(GameId id) async {
    for (final element in _subscriptions) {
      await element.cancel();
    }
    _subscriptions.add(_gameRepo.fetchGame(id).listen((game) => add(GameEvent.gameUpdated(game))));
  }

  Future<void> _onFetchGame(_FetchGame event, Emitter<GameState> emit) async {
    final resp = _gameId == null ? await _gameRepo.createNewGame() : await _gameRepo.joinGameById(_gameId!);
    if (isClosed) return;

    if (resp case final FailureNetworkResponse resp) {
      return emit(state.copyWith(gameError: GameErrorRandom(resp.failure)));
    }

    final gameResponse = resp.successOrThrow;

    switch (gameResponse) {
      case JoinGameResponseSuccess():
        final game = gameResponse.game;
        _gameId ??= gameResponse.game.id;

        isMyUserOwner = game.isMyUserOwner;
        gameUrl = GameDeepLink.fromUrl(game.url);

        _gameRepo.joinedGame(_gameId!);
        _subscribeToGameEvents(_gameId!);
      case JoinGameResponseGameIsFull():
        emit(state.copyWith(gameError: const GameErrorGameIsFull()));
      case JoinGameResponseCreateUrlFailed():
        emit(state.copyWith(gameError: const GameErrorCreateUrl()));
      case JoinGameResponseGameIsFinished():
        emit(state.copyWith(gameError: const GameErrorIsFinished()));
    }
  }

  void _onGameUpdated(_GameUpdated event, Emitter<GameState> emit) {
    logDebug('game updated');
    final game = event.game;

    final newState = _newStateFromGameEntity(game);

    emit(newState);
  }

  Future<void> _onTerminateGame(_TerminateGame event, Emitter<GameState> emit) async {
    if (state case GameStateGameOver _ || GameStateGameDiscontinued _) return;

    final resp = await _gameRepo.terminateGame(id: _gameId!);
    if (isClosed) return;

    if (resp.failure != null) return emit(state.copyWith(gameError: GameErrorRandom(resp.failure!)));
  }

  Future<void> _onMakeMove(_MakeMove event, Emitter<GameState> emit) async {
    final user = _user;
    if (user == null) return;

    final board = Map.of(state.board);

    final myCellState = isMyUserOwner ? CellState.owner : CellState.opponent;

    board[event.cellId] = Cell(cellId: event.cellId, cellState: myCellState);

    // Check if this move results in a win
    final winningCellIds = getWinningCellIds(board, myCellState, _boardSizeManager.boardAxisLength);

    final MakeMoveDto moveDto;
    if (winningCellIds.isNotEmpty) {
      for (final cellId in winningCellIds) {
        final cell = board[cellId];
        if (cell == null) continue;

        board[cellId] = WinnerCell(cellId: cellId, cellState: cell.cellState, winnerId: user.id);
      }
      moveDto = MakeMoveFinishDto(gameId: _gameId!, boardMap: board, endedAt: DateTime.now(), winnerId: user.id);
    } else if (isBoardFull(board, _boardSizeManager.boardAxisLength)) {
      moveDto = MakeMoveFinishDto(gameId: _gameId!, boardMap: board, endedAt: DateTime.now(), winnerId: null);
    } else {
      moveDto = MakeMoveGeneralDto(gameId: _gameId!, boardMap: board, isOwnerTurn: !isMyUserOwner);
    }

    emit(state.copyWith(board: board));

    final resp = await _gameRepo.makeMove(moveDto);

    if (resp.failure == null) return;
    emit(state.copyWith(gameError: GameErrorRandom(resp.failure!)));
  }
}

extension on GameBloc {
  GameWarning? _determineMyTurnWarning(Game game) {
    if (!_isInitialGameFetch && state is GameStateMyTurn && state.teammateUser != null) {
      return null;
    }

    if (game.gameStatus == GameStatus.notStarted) {
      return const GameWarningWaitingForTeamateToJoin();
    }

    if (game.gameStatus == GameStatus.teamateJoined && !_isInitialGameFetch) {
      return GameWarningTeammateHasJoined(game.teammateUser!.name);
    }

    return const GameWarningYourTurn();
  }

  GameWarning? _determineOpponentTurnWarning(Game game) {
    if (game.gameStatus == GameStatus.teamateJoined) {
      return const GameWarningWaitingForOwnerToStartGame();
    }

    if (_isInitialGameFetch || state is! GameStateOpponentTurn) {
      return GameWarningTeammatesTurn(game.teammateUser!.name);
    }

    return null;
  }

  GameState _newStateFromGameEntity(Game game) {
    final GameState newState;

    switch ((isMyUserOwner, game.gameStatus)) {
      case (true, GameStatus.ownerTurn) ||
            (true, GameStatus.teamateJoined) ||
            (false, GameStatus.teamateTurn) ||
            (_, GameStatus.notStarted):
        final gameWarning = _determineMyTurnWarning(game);

        newState = GameState.myTurn(
          board: game.boardMap,
          myUser: game.myUser,
          teammateUser: game.teammateUser,
          showInviteDialog: isMyUserOwner && game.teammateUser == null,
          gameWarning: gameWarning,
        );
      case (false, GameStatus.ownerTurn) || (false, GameStatus.teamateJoined) || (true, GameStatus.teamateTurn):
        final gameWarning = _determineOpponentTurnWarning(game);

        newState = GameState.opponentTurn(
          board: game.boardMap,
          myUser: game.myUser,
          teammateUser: game.teammateUser,
          showInviteDialog: false,
          gameWarning: gameWarning,
        );
      case (_, GameStatus.finished):
        newState = GameState.gameOver(
          board: game.boardMap,
          myUser: game.myUser,
          teammateUser: game.teammateUser,
          showInviteDialog: false,
          gameWarning: game.isDraw
              ? const GameWarningFinishedDraw()
              : game.winnerId == game.myUser.id
                  ? const GameWarningFinishedSuccess()
                  : const GameWarningFinishedFail(),
        );
      case (_, GameStatus.userTerminated) || (_, GameStatus.unknown):
        newState = GameState.gameDiscontinued(
          board: game.boardMap,
          myUser: game.myUser,
          teammateUser: game.teammateUser,
          showInviteDialog: false,
          gameWarning: switch (game.gameStatus) {
            GameStatus.userTerminated => const GameWarningTerminated(),
            GameStatus.unknown => const GameWarningUnknownStatus(),
            _ => null,
          },
        );
    }

    if (_isInitialGameFetch) _isInitialGameFetch = false;

    return newState;
  }
}
