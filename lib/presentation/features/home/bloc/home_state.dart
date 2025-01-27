part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.user({
    required User user,
    required DateTime datetime,
    required GameId? gameToOpen,
    required List<LeaderboardUser> topPlayers,
    @Default([]) List<Game> gamesInProgress,
    @Default([]) List<Game> recentGames,
    required String? error,
  }) = HomeStateUser;
  const factory HomeState.noUser({required List<LeaderboardUser> topPlayers, required String? error}) = HomeStateNoUser;
  const factory HomeState.requiresUpdate({required String? error, required List<LeaderboardUser> topPlayers}) =
      HomeStateRequiresUpdate;
}
