part of 'ai_game_bloc.dart';

@freezed
class AiGameState with _$AiGameState {
  const factory AiGameState.loading() = _Loading;
  const factory AiGameState.playing({
    GameWarning? warning,
    String? error,
    required Map<CellId, Cell?> board,
    required GameUser myUser,
    required GameUser opponentUser,
    required bool isGameOver,
    required CellState? winner,
  }) = _Playing;
}
