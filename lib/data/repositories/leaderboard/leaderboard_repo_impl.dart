import 'package:chat_app/data/core/mixins/repository_validation_mixin.dart';
import 'package:chat_app/data/datasources/game/game_data_source.dart';
import 'package:chat_app/data/remote/network_response.dart';
import 'package:chat_app/domain/dtos/game/get_leaderboard_period.dart';
import 'package:chat_app/domain/entities/leaderboard/leaderboard_user.dart';
import 'package:chat_app/domain/entities/user/user.dart';
import 'package:chat_app/domain/models/game/game_status.dart';
import 'package:chat_app/domain/models/leaderboard/user_stats.dart';
import 'package:chat_app/domain/repositories/game/recent_game_users_repo.dart';
import 'package:chat_app/domain/repositories/leaderboard_repo.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: LeaderboardRepo)
class LeaderboardRepoImpl extends RepositoryValidationMixin implements LeaderboardRepo {
  final GameDataSource _gameDataSource;
  final RecentGameUsersRepo _recentGameUsersRepo;

  LeaderboardRepoImpl(this._gameDataSource, this._recentGameUsersRepo);

  @override
  Future<NetworkResponse<List<LeaderboardUser>>> getLeaderboardUsersPer(GetLeaderboardPeriod period) async {
    return handleRequest(
      () async {
        final games = await _gameDataSource.getGamesPer(period);

        // Create a map to track user statistics
        final userStats = <UserId, UserStats>{};

        final uniqueUserIds = games
            .where((game) => game.gameStatus == GameStatus.finished)
            .map((game) => [game.owner.id, game.opponent?.id].nonNulls)
            .expand((game) => game)
            .toSet();

        final users = await _recentGameUsersRepo.getUsersFromBucket(uniqueUserIds);

        // Process each game to accumulate stats
        for (final game in games) {
          final player1 = game.owner;
          final player2 = game.opponent;

          if (player2 == null) continue;

          final user1 = users[player1.id];
          final user2 = users[player2.id];

          if (user1 == null || user2 == null) continue;

          // Process player 1
          _updateUserStats(
            userStats,
            userId: player1.id,
            name: user1.user.name,
            imageUrl: user1.user.imageUrl,
            isWinner: game.winnerId == player1.id,
            isDraw: game.isDraw,
          );

          // Process player 2
          _updateUserStats(
            userStats,
            userId: player2.id,
            name: user2.user.name,
            imageUrl: user2.user.imageUrl,
            isWinner: game.winnerId == player2.id,
            isDraw: game.isDraw,
          );
        }

        // Convert stats to LeaderboardUser objects
        final leaderboardUsers = userStats.entries.map((entry) {
          final stats = entry.value;
          return LeaderboardUser(
            id: entry.key,
            name: stats.name,
            imageUrl: stats.imageUrl,
            wins: stats.wins,
            losses: stats.losses,
            draws: stats.draws,
            winRate: stats.wins / (stats.wins + stats.losses),
          );
        }).toList();

        return NetworkResponse.success(leaderboardUsers);
      },
    );
  }

  @override
  Stream<List<LeaderboardUser>> fetchLeaderboardUsersPer(GetLeaderboardPeriod period) {
    return _gameDataSource.fetchGamesPer(period).whereNotNull().asyncMap((games) async {
      // Get unique user IDs from finished games
      final uniqueUserIds = games
          .where((game) => game.gameStatus == GameStatus.finished)
          .map((game) => [game.owner.id, game.opponent?.id].nonNulls)
          .expand((users) => users)
          .toSet();

      if (uniqueUserIds.isEmpty) return [];

      // Get user details from bucket
      final users = await _recentGameUsersRepo.getUsersFromBucket(uniqueUserIds);

      // Create a map to track user statistics
      final userStats = <UserId, UserStats>{};

      // Process each game to accumulate stats
      for (final game in games) {
        if (game.gameStatus != GameStatus.finished || game.opponent == null) continue;

        final user1 = users[game.owner.id];
        final user2 = users[game.opponent!.id];

        if (user1 == null || user2 == null) continue;

        // Process player 1
        _updateUserStats(
          userStats,
          userId: user1.user.id,
          name: user1.user.name,
          imageUrl: user1.user.imageUrl,
          isWinner: game.winnerId == user1.user.id,
          isDraw: game.isDraw,
        );

        // Process player 2
        _updateUserStats(
          userStats,
          userId: user2.user.id,
          name: user2.user.name,
          imageUrl: user2.user.imageUrl,
          isWinner: game.winnerId == user2.user.id,
          isDraw: game.isDraw,
        );
      }

      // Convert stats to LeaderboardUser objects and sort by wins
      return userStats.entries.map((entry) {
        final stats = entry.value;
        return LeaderboardUser(
          id: entry.key,
          name: stats.name,
          imageUrl: stats.imageUrl,
          wins: stats.wins,
          losses: stats.losses,
          draws: stats.draws,
          winRate: stats.wins / (stats.wins + stats.losses),
        );
      }).toList()
        ..sort((a, b) => b.winRate.compareTo(a.winRate));
    });
  }

  void _updateUserStats(
    Map<UserId, UserStats> userStats, {
    required UserId userId,
    required String name,
    required String? imageUrl,
    required bool isWinner,
    required bool isDraw,
  }) {
    final stats = userStats.putIfAbsent(userId, () => UserStats(name: name, imageUrl: imageUrl));

    if (isDraw) {
      stats.draws++;
    } else if (isWinner) {
      stats.wins++;
    } else {
      stats.losses++;
    }
  }
}
