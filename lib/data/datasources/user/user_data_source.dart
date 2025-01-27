import 'package:chat_app/core/utils/extensions/collection_extensions.dart';
import 'package:chat_app/domain/entities/user/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class UserDataSource {
  final _firestore = FirebaseFirestore.instance;

  late final _usersCollection = _firestore.collection('users');

  DocumentReference<Map<String, dynamic>> _userDoc(UserId id) => _usersCollection.doc(id.rawValue);

  Future<User?> getUserById(UserId id) async {
    final snapshot = await _userDoc(id).get();
    return snapshot._userFromSnapshot();
  }

  Future<List<User>> getUsersByIds(List<UserId> ids) async {
    const whereInLimit = 30;

    final idValues = ids.map((id) => id.rawValue).toList();
    final chunks = idValues.split(whereInLimit);

    final futures = chunks.map((chunk) async {
      final snapshot = await _usersCollection.where('id', whereIn: chunk).get();
      final users = snapshot.docs.map((doc) => User.fromJson(doc.data()));
      return users;
    });

    final results = await Future.wait(futures);

    return results.expand((result) => result).toList();
  }

  Future<User?> getUserByEmail(String email) async {
    final snapshot = await _usersCollection.where('email', isEqualTo: email).limit(1).get();
    return snapshot.docs.firstOrNull?._userFromSnapshot();
  }

  Stream<User?> fetchUser(UserId id) {
    return _userDoc(id).snapshots().map((snapshot) => snapshot._userFromSnapshot());
  }

  Future<void> addUser(User user) {
    return _userDoc(user.id).set(user.toJson());
  }

  Future<void> updateUser(User user) {
    return _userDoc(user.id).update(user.toJson());
  }

  Future<void> deleteUser(UserId id) {
    return _userDoc(id).delete();
  }
}

extension on DocumentSnapshot<Map<String, dynamic>> {
  User? _userFromSnapshot() {
    final data = exists ? this.data() : null;

    return data == null ? null : User.fromJson(data);
  }
}
