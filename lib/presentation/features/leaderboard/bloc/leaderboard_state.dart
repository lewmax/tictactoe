part of 'leaderboard_bloc.dart';

@freezed
class LeaderboardState with _$LeaderboardState {
  const factory LeaderboardState({required DateTime datetime, @Default([]) List<LeaderboardUser> topUsers}) =
      _LeaderboardState;
}
