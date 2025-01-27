part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.userUpdated(User? user) = _UserUpdated;
  const factory HomeEvent.dateUpdated(DateTime dateTime) = _DateUpdated;
  const factory HomeEvent.openGame(GameId id) = _OpenGame;
  const factory HomeEvent.gamesUpdated(Map<GameId, Game> gamesInProgress, Map<GameId, Game> recentGames) =
      _GamesUpdated;
  const factory HomeEvent.topLeaderboardUpdated(List<LeaderboardUser> leaderboardUsers) = _TopLeaderboardUpdated;
  const factory HomeEvent.sendFeedback() = _SendFeedback;
  const factory HomeEvent.requiresUpdate() = _RequiresUpdate;
  const factory HomeEvent.errorReceived(String error) = _ErrorReceived;
}
