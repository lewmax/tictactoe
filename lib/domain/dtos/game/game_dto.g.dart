// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameDto _$GameDtoFromJson(Map<String, dynamic> json) => GameDto(
      id: ModelId<Game, String>.fromJson(json['id']),
      url: json['url'] as String,
      timeCreatedAt: FirebaseDateConverter.datetimeMapFromJson(json['timeCreatedAt']),
      timeEndedAt: GameDto._datetimeMapFromJson(json['timeEndedAt']),
      owner: GameUserDto.fromJson(json['owner'] as Map<String, dynamic>),
      opponent: json['opponent'] == null ? null : GameUserDto.fromJson(json['opponent'] as Map<String, dynamic>),
      gameStatus: GameStatus.fromJson(json['gameStatus'] as String),
      winnerId: json['winnerId'] == null ? null : ModelId<User, String>.fromJson(json['winnerId']),
      boardMap: GameConverter.boardMapFromJson(json['boardMap'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameDtoToJson(GameDto instance) => <String, dynamic>{
      'id': instance.id.toJson(),
      'url': instance.url,
      'timeCreatedAt': FirebaseDateConverter.datetimeMapToJson(instance.timeCreatedAt),
      'timeEndedAt': GameDto._datetimeMapToJson(instance.timeEndedAt),
      'owner': instance.owner.toJson(),
      'opponent': instance.opponent?.toJson(),
      'gameStatus': _$GameStatusEnumMap[instance.gameStatus]!,
      'winnerId': instance.winnerId?.toJson(),
      'boardMap': GameConverter.boardMapToJson(instance.boardMap),
    };

const _$GameStatusEnumMap = {
  GameStatus.notStarted: 'not_started',
  GameStatus.teamateJoined: 'teamate_joined',
  GameStatus.ownerTurn: 'owner_turn',
  GameStatus.teamateTurn: 'teamate_turn',
  GameStatus.finished: 'finished',
  GameStatus.userTerminated: 'user_terminated',
  GameStatus.unknown: 'unknown',
};
