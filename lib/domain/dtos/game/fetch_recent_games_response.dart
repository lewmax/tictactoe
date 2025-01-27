import 'package:chat_app/domain/entities/game/game.dart';

class FetchRecentGamesResponse {
  final Map<GameId, Game> inProgress;
  final Map<GameId, Game> recent;

  FetchRecentGamesResponse(this.inProgress, this.recent);
}
