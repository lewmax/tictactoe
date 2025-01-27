import 'package:chat_app/domain/converters/game/game_converter.dart';
import 'package:chat_app/domain/dtos/game/cell_dto.dart';
import 'package:chat_app/domain/dtos/game/game_dto.dart';
import 'package:chat_app/domain/dtos/game/get_leaderboard_period.dart';
import 'package:chat_app/domain/entities/game/cell_id.dart';
import 'package:chat_app/domain/entities/game/game.dart';
import 'package:chat_app/domain/entities/user/user.dart';
import 'package:chat_app/domain/models/game/game_status.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class GameDataSource {
  final _firestore = FirebaseFirestore.instance;

  late final _gamesCollection = _firestore.collection('games');

  DocumentReference<Map<String, dynamic>> _gameDocById(GameId id) => _gamesCollection.doc(id.rawValue);

  Query<Map<String, dynamic>> _recentGamesQuery(UserId id) => _gamesCollection
      .where(Filter.or(Filter('owner.id', isEqualTo: id.rawValue), Filter('opponent.id', isEqualTo: id.rawValue)))
      .orderBy('createdAt', descending: true);

  Query<Map<String, dynamic>> _leaderboardQuery(GetLeaderboardPeriod period) {
    final firebasePeriod = period.firebasePeriod;
    Query<Map<String, dynamic>> query = _gamesCollection
        .where('gameStatus', isEqualTo: GameStatus.finished.firebaseStatus)
        .orderBy('endedAt', descending: true);

    if (firebasePeriod != null) {
      query = query.where('endedAt', isGreaterThan: DateTime.now().subtract(firebasePeriod));
    }

    return query;
  }

  Future<List<GameDto>> getGamesPer(GetLeaderboardPeriod period) async {
    final query = _leaderboardQuery(period);
    final snapshots = await query.get();
    return snapshots.docs.map((snapshot) => snapshot._gameFromSnapshot()).nonNulls.toList();
  }

  Stream<List<GameDto>?> fetchGamesPer(GetLeaderboardPeriod period) {
    return _leaderboardQuery(period).snapshots(includeMetadataChanges: true).map((snapshots) {
      if (snapshots.metadata.hasPendingWrites) return null;

      return snapshots.docs.map((snapshot) => snapshot._gameFromSnapshot()).nonNulls.toList();
    });
  }

  Future<GameDto?> getGameById(GameId id) async {
    final snapshot = await _gameDocById(id).get();
    return snapshot._gameFromSnapshot();
  }

  Stream<GameDto?> fetchGame(GameId id) {
    return _gameDocById(id).snapshots(includeMetadataChanges: true).map((snapshot) {
      if (snapshot.metadata.hasPendingWrites) return null;

      return snapshot._gameFromSnapshot();
    });
  }

  Stream<List<GameDto>?> fetchRecentGamesForUser(UserId id) {
    return _recentGamesQuery(id).snapshots(includeMetadataChanges: true).map((snapshots) {
      if (snapshots.metadata.hasPendingWrites) return null;

      return snapshots.docs.map((snapshot) => snapshot._gameFromSnapshot()).nonNulls.toList();
    });
  }

  Future<List<GameDto>> getRecentGamesForUser(UserId id) async {
    final snapshots = await _recentGamesQuery(id).get();

    return snapshots.docs.map((snapshot) => snapshot._gameFromSnapshot()).nonNulls.toList();
  }

  Future<void> createGame(GameDto game) {
    return _gameDocById(game.id).set(game.toJson());
  }

  Future<void> updateGame(GameDto game) {
    return _gameDocById(game.id).update(game.toJson());
  }

  Future<void> updateGameStatus(GameId id, GameStatus status) {
    return _gameDocById(id).update({'gameStatus': status.firebaseStatus});
  }

  Future<void> updateGameBoard({
    required GameId id,
    required Map<CellId, CellDto> board,
    GameStatus? gameStatus,
    DateTime? endedAt,
    UserId? winnerId,
  }) {
    return _gameDocById(id).update({
      'boardMap': GameConverter.boardMapToJson(board),
      if (gameStatus != null) 'gameStatus': gameStatus.firebaseStatus,
      if (endedAt != null) 'endedAt': endedAt,
      if (winnerId != null) 'winnerId': winnerId.rawValue,
    });
  }

  Future<void> terminateGame({required GameId id, required DateTime endedAt}) {
    return _gameDocById(id)
        .update({'gameStatus': GameStatus.userTerminated.firebaseStatus, 'endedAt': endedAt});
  }
}

extension on DocumentSnapshot<Map<String, dynamic>> {
  GameDto? _gameFromSnapshot() {
    final data = exists ? this.data() : null;

    if (data == null) return null;

    try {
      return GameDto.fromJson(data);
    } catch (e) {
      return null;
    }
  }
}

extension on QueryDocumentSnapshot<Map<String, dynamic>> {
  GameDto? _gameFromSnapshot() {
    final data = exists ? this.data() : null;

    if (data == null) return null;

    try {
      return GameDto.fromJson(data);
    } catch (e) {
      return null;
    }
  }
}
