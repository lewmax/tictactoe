import 'package:chat_app/domain/entities/user/user.dart';
import 'package:chat_app/domain/models/game/recent_user.dart';
import 'package:rxdart/rxdart.dart';

abstract class RecentGameUsersRepo {
  ValueStream<Map<UserId, RecentUser>> get recentPlayersStream;

  Future<RecentUser?> getUserFromBucket(UserId id);

  Future<Map<UserId, RecentUser>> getUsersFromBucket(Set<UserId> ids);
}
