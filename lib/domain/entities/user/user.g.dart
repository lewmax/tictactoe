// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: ModelId<User, String>.fromJson(json['id']),
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'imageUrl': instance.imageUrl,
    };
