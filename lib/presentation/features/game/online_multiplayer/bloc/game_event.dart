part of 'game_bloc.dart';

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.fetchGame() = _FetchGame;
  const factory GameEvent.gameUpdated(Game game) = _GameUpdated;
  const factory GameEvent.terminateGame() = _TerminateGame;
  const factory GameEvent.makeMove(CellId cellId) = _MakeMove;
}
