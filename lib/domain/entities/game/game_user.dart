import 'package:chat_app/domain/entities/user/user.dart';
import 'package:equatable/equatable.dart';

class GameUser extends Equatable {
  final UserId id;
  final String name;
  final String? imageUrl;
  final bool isOwner;
  final bool isMyNextTurn;

  factory GameUser.fromUser(User user, bool isOwner, bool isMyNextTurn) => GameUser(
        id: user.id,
        name: user.name,
        isOwner: isOwner,
        imageUrl: user.imageUrl,
        isMyNextTurn: isMyNextTurn,
      );

  const GameUser({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.isOwner,
    required this.isMyNextTurn,
  });

  @override
  List<Object?> get props => [id, name, imageUrl, isOwner, isMyNextTurn];

  GameUser copyWith({
    UserId? id,
    String? name,
    String? imageUrl,
    bool? isOwner,
    bool? isMyNextTurn,
  }) {
    return GameUser(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      isOwner: isOwner ?? this.isOwner,
      isMyNextTurn: isMyNextTurn ?? this.isMyNextTurn,
    );
  }
}
