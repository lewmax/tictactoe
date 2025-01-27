part of 'leaderboard_bloc.dart';

@freezed
class LeaderboardEvent with _$LeaderboardEvent {
  const factory LeaderboardEvent.dateUpdated(DateTime dateTime) = _DateUpdated;
  const factory LeaderboardEvent.topUsersUpdated(List<LeaderboardUser> users) = _TopUsersUpdated;
}
