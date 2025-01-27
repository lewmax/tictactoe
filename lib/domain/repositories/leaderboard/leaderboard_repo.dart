import 'package:chat_app/data/remote/network_response.dart';
import 'package:chat_app/domain/dtos/game/get_leaderboard_period.dart';
import 'package:chat_app/domain/entities/leaderboard/leaderboard_user.dart';

abstract interface class LeaderboardRepo {
  Future<NetworkResponse<List<LeaderboardUser>>> getLeaderboardUsersPer(GetLeaderboardPeriod period);
  Stream<List<LeaderboardUser>> fetchLeaderboardUsersPer(GetLeaderboardPeriod period);
}
