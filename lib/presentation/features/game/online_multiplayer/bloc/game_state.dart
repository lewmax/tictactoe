part of 'game_bloc.dart';

@freezed
class GameState with _$GameState {
  const factory GameState.initial({
    GameWarning? gameWarning,
    GameError? gameError,
    required Map<CellId, Cell?> board,
    required GameUser myUser,
    required GameUser? teammateUser,
    required bool showInviteDialog,
  }) = GameStateInitial;
  const factory GameState.myTurn({
    GameWarning? gameWarning,
    GameError? gameError,
    required Map<CellId, Cell?> board,
    required GameUser myUser,
    required GameUser? teammateUser,
    required bool showInviteDialog,
  }) = GameStateMyTurn;
  const factory GameState.opponentTurn({
    GameWarning? gameWarning,
    GameError? gameError,
    required Map<CellId, Cell?> board,
    required GameUser myUser,
    required GameUser? teammateUser,
    required bool showInviteDialog,
  }) = GameStateOpponentTurn;
  const factory GameState.gameOver({
    GameWarning? gameWarning,
    GameError? gameError,
    required Map<CellId, Cell?> board,
    required GameUser myUser,
    required GameUser? teammateUser,
    required bool showInviteDialog,
  }) = GameStateGameOver;
  const factory GameState.gameDiscontinued({
    GameWarning? gameWarning,
    GameError? gameError,
    required Map<CellId, Cell?> board,
    required GameUser myUser,
    required GameUser? teammateUser,
    required bool showInviteDialog,
  }) = GameStateGameDiscontinued;
}
