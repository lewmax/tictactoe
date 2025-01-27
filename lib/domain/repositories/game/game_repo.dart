import 'package:chat_app/data/remote/network_response.dart';
import 'package:chat_app/domain/dtos/game/fetch_recent_games_response.dart';
import 'package:chat_app/domain/dtos/game/join_game_response.dart';
import 'package:chat_app/domain/dtos/game/make_move_dto.dart';
import 'package:chat_app/domain/entities/game/game.dart';
import 'package:rxdart/rxdart.dart';

abstract interface class GameRepo {
  void joinedGame(GameId gameId);
  void leaveGame();
  void clearGameRepo();

  ValueStream<GameId?> get activeGameIdStream;

  ValueStream<Map<GameId, Game>> get gamesInProgressStream;

  ValueStream<Map<GameId, Game>> get recentGamesStream;

  Future<NetworkResponse<JoinGameResponse>> createNewGame();

  Future<NetworkResponse<JoinGameResponse>> joinGameById(GameId gameId);

  Stream<Game> fetchGame(GameId id);

  Stream<FetchRecentGamesResponse> fetchRecentGames();

  Future<NetworkResponse<void>> makeMove(MakeMoveDto dto);

  Future<NetworkResponse<void>> terminateGame({required GameId id});
}
