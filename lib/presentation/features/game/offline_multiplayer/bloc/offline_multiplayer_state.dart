part of 'offline_multiplayer_bloc.dart';

@freezed
class OfflineMultiplayerState with _$OfflineMultiplayerState {
  const factory OfflineMultiplayerState.initial() = _Initial;
  const factory OfflineMultiplayerState.playing({
    GameWarning? warning,
    required Map<CellId, Cell?> board,
    required GameUser myUser,
    required GameUser opponentUser,
    required bool isGameOver,
    required CellState? winner,
    required Result result,
  }) = _Playing;
}

// extension on _Playing {
//   GameUser get currentPlayer => myUser.isMyNextTurn ? myUser : opponentUser;
// }

class Result extends Equatable {
  final int player1Wins;
  final int player2Wins;

  const Result({required this.player1Wins, required this.player2Wins});

  @override
  List<Object?> get props => [player1Wins, player2Wins];

  Result copyWith({int? player1Wins, int? player2Wins}) => Result(
        player1Wins: player1Wins ?? this.player1Wins,
        player2Wins: player2Wins ?? this.player2Wins,
      );
}
