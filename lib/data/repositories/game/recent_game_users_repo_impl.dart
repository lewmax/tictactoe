import 'package:chat_app/core/utils/extensions/integer_extensions.dart';
import 'package:chat_app/data/datasources/user/user_data_source.dart';
import 'package:chat_app/domain/entities/user/user.dart';
import 'package:chat_app/domain/models/game/recent_user.dart';
import 'package:chat_app/domain/repositories/game/recent_game_users_repo.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:useful_extensions/useful_extensions.dart';

@LazySingleton(as: RecentGameUsersRepo)
class RecentGameUsersRepoImpl extends RecentGameUsersRepo {
  final UserDataSource _userDataSource;

  RecentGameUsersRepoImpl(this._userDataSource) {
    _recentPlayersBucket.value = {};
  }

  final Duration _userUpdateThreshold = 2.minutes;

  //players cached
  final _recentPlayersBucket = BehaviorSubject<Map<UserId, RecentUser>>();

  @override
  ValueStream<Map<UserId, RecentUser>> get recentPlayersStream => _recentPlayersBucket.stream;

  @override
  Future<RecentUser?> getUserFromBucket(UserId id) async {
    final users = Map.of(_recentPlayersBucket.value);
    final foundUser = users[id];
    if (foundUser == null) {
      final newUser = await _userDataSource.getUserById(id);
      if (newUser != null) {
        users[id] = RecentUser(newUser, DateTime.now());
        _recentPlayersBucket.value = users;
      }
      return newUser?.let((user) => RecentUser(user, DateTime.now()));
    } else {
      final requiredUpdate = foundUser.updatedAt.isBefore(DateTime.now().subtract(_userUpdateThreshold));

      if (requiredUpdate) {
        final user = await _userDataSource.getUserById(id);
        if (user != null) {
          users[id] = RecentUser(user, DateTime.now());
          _recentPlayersBucket.value = users;
        }
        return user?.let((user) => RecentUser(user, DateTime.now())) ?? foundUser;
      }
      return foundUser;
    }
  }

  @override
  Future<Map<UserId, RecentUser>> getUsersFromBucket(Set<UserId> ids) async {
    if (ids.isEmpty) return {};

    final users = Map.of(_recentPlayersBucket.value);
    final result = <UserId, RecentUser>{};
    final idsToFetch = <UserId>[];

    // First pass: get cached users and collect IDs that need fetching
    for (final id in ids) {
      final cachedUser = users[id];
      if (cachedUser == null || cachedUser.updatedAt.isBefore(DateTime.now().subtract(_userUpdateThreshold))) {
        idsToFetch.add(id);
      } else {
        result[id] = cachedUser;
      }
    }

    // Fetch missing/outdated users in batch
    if (idsToFetch.isNotEmpty) {
      final fetchedUsers = await _userDataSource.getUsersByIds(idsToFetch);
      final now = DateTime.now();

      for (final user in fetchedUsers) {
        final recentUser = RecentUser(user, now);
        users[user.id] = recentUser;
        result[user.id] = recentUser;
      }
    }

    _recentPlayersBucket.value = users;
    return result;
  }
}
