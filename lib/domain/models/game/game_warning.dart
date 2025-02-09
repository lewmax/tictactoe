import 'package:equatable/equatable.dart';

sealed class GameWarning extends Equatable {
  const GameWarning();

  String get warning;

  @override
  List<Object?> get props => [warning];
}

class GameWarningWaitingForTeamateToJoin extends GameWarning {
  const GameWarningWaitingForTeamateToJoin();

  @override
  String get warning => 'Waiting for teammate to join the game';
}

class GameWarningWaitingForOwnerToStartGame extends GameWarning {
  const GameWarningWaitingForOwnerToStartGame();

  @override
  String get warning => 'Waiting for game owner to start the game';
}

class GameWarningTeammateHasJoined extends GameWarning {
  final String name;
  const GameWarningTeammateHasJoined(this.name);

  @override
  String get warning => 'Teammate $name has joined the game';
}

class GameWarningYourTurn extends GameWarning {
  const GameWarningYourTurn();

  @override
  String get warning => "It's your turn";
}

class GameWarningTeammatesTurn extends GameWarning {
  const GameWarningTeammatesTurn(this.name);
  final String name;

  @override
  String get warning => "It's $name's turn ";
}

class GameWarningFinishedSuccess extends GameWarning {
  const GameWarningFinishedSuccess({this.winner});
  final String? winner;

  @override
  String get warning => winner == null ? "Congrats, you have won the game!" : "Congrats, $winner has won the game!";
}

class GameWarningFinishedFail extends GameWarning {
  const GameWarningFinishedFail();

  @override
  String get warning => "You have lost the game!";
}

class GameWarningFinishedDraw extends GameWarning {
  const GameWarningFinishedDraw();

  @override
  String get warning => "This game is a draw!";
}

class GameWarningFinishedBefore extends GameWarning {
  const GameWarningFinishedBefore();

  @override
  String get warning => "This game is already finished. Start a new one";
}

class GameWarningTerminated extends GameWarning {
  const GameWarningTerminated();

  @override
  String get warning => "Game has been ended!";
}

class GameWarningUnknownStatus extends GameWarning {
  const GameWarningUnknownStatus();

  @override
  String get warning => "This game has got some issues, start a new one!";
}
