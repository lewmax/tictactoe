import 'package:equatable/equatable.dart';
import 'package:chat_app/domain/entities/user/user.dart';

class RecentUser extends Equatable {
  final User user;
  final DateTime updatedAt;

  const RecentUser(this.user, this.updatedAt);

  @override
  List<Object?> get props => [user, updatedAt];
}
