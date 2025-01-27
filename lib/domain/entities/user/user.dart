import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:chat_app/domain/common/model_id.dart';

part 'user.g.dart';

typedef UserId = ModelId<User, String>;

@JsonSerializable(explicitToJson: true)
class User extends Equatable {
  final UserId id;
  final String name;
  final String email;
  final String? phone;
  final String? imageUrl;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.imageUrl,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.empty(UserId id) => User(id: id, name: 'User deleted', email: '', phone: null, imageUrl: null);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  User copyWith({
    UserId? id,
    String? name,
    String? email,
    String? phone,
    ValueGetter<String?>? imageUrl,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,

      phone: phone ?? this.phone,
      imageUrl: imageUrl == null ? this.imageUrl : imageUrl(),
    );
  }

  @override
  List<Object?> get props => [id, name, email, phone, imageUrl];
}
