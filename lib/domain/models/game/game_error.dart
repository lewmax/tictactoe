import 'package:equatable/equatable.dart';

sealed class GameError extends Equatable {
  const GameError();

  String get error;
}

class GameErrorBadConnection extends GameError {
  const GameErrorBadConnection();

  @override
  String get error => 'Bad internet connection';

  @override
  List<Object?> get props => [error];
}

class GameErrorGameIsFull extends GameError {
  const GameErrorGameIsFull();

  @override
  String get error => 'This game party is full, try another one';

  @override
  List<Object?> get props => [error];
}

class GameErrorCreateUrl extends GameError {
  const GameErrorCreateUrl();

  @override
  String get error => 'Error happened while creating url for the game';

  @override
  List<Object?> get props => [error];
}

class GameErrorIsFinished extends GameError {
  const GameErrorIsFinished();

  @override
  String get error => 'This game party is finished, try another one';

  @override
  List<Object?> get props => [error];
}

class GameErrorRandom extends GameError {
  final String details;

  const GameErrorRandom(this.details);

  @override
  String get error => 'An error occured: $details';

  @override
  List<Object?> get props => [error];
}
