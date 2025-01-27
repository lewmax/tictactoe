import 'package:chat_app/domain/common/model_id.dart';
import 'package:chat_app/domain/entities/game/game_user.dart';
import 'package:chat_app/domain/entities/user/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'game_user_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class GameUserDto {
  final UserId id;

  GameUserDto({required this.id});

  factory GameUserDto.fromJson(Map<String, dynamic> json) => _$GameUserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GameUserDtoToJson(this);

  factory GameUserDto.fromDomain(GameUser gameUser) => GameUserDto(id: gameUser.id);
}
