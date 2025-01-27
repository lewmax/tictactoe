import 'package:chat_app/domain/entities/game/game.dart';

sealed class JoinGameResponse {
  const JoinGameResponse();
}

class JoinGameResponseSuccess extends JoinGameResponse {
  final Game game;
  final bool isInitial;

  const JoinGameResponseSuccess({required this.game, required this.isInitial});
}

class JoinGameResponseGameIsFull extends JoinGameResponse {
  const JoinGameResponseGameIsFull();
}

class JoinGameResponseGameIsFinished extends JoinGameResponse {
  const JoinGameResponseGameIsFinished();
}

class JoinGameResponseCreateUrlFailed extends JoinGameResponse {
  const JoinGameResponseCreateUrlFailed();
}
