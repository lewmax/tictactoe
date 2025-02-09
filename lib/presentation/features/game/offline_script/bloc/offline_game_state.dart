part of 'offline_game_bloc.dart';

@freezed
class OfflineGameState with _$OfflineGameState {
  const factory OfflineGameState.initial() = Initial;
  const factory OfflineGameState.playing({
    GameWarning? warning,
    required Map<CellId, Cell?> board,
    required GameUser myUser,
    required GameUser opponentUser,
    required bool isGameOver,
    required CellState? winner,
  }) = Playing;
}

// extension on _Playing {
//   GameUser get currentPlayer => myUser.isMyNextTurn ? myUser : opponentUser;
// }
