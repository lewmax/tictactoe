import 'package:chat_app/domain/common/model_id.dart';
import 'package:chat_app/domain/converters/core/date_converter.dart';
import 'package:chat_app/domain/converters/game/game_converter.dart';
import 'package:chat_app/domain/dtos/game/cell_dto.dart';
import 'package:chat_app/domain/dtos/game/game_user_dto.dart';
import 'package:chat_app/domain/entities/game/cell_id.dart';
import 'package:chat_app/domain/entities/game/game.dart';
import 'package:chat_app/domain/entities/user/user.dart';
import 'package:chat_app/domain/models/game/game_status.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:useful_extensions/useful_extensions.dart';

part 'game_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class GameDto {
  final GameId id;
  final String url;
  @JsonKey(toJson: FirebaseDateConverter.datetimeMapToJson, fromJson: FirebaseDateConverter.datetimeMapFromJson)
  final DateTime timeCreatedAt;
  @JsonKey(toJson: _datetimeMapToJson, fromJson: _datetimeMapFromJson)
  final DateTime? timeEndedAt;
  final GameUserDto owner;
  final GameUserDto? opponent;
  final GameStatus gameStatus;
  final UserId? winnerId;
  @JsonKey(fromJson: GameConverter.boardMapFromJson, toJson: GameConverter.boardMapToJson)
  final Map<CellId, CellDto> boardMap;

  bool get isDraw => gameStatus == GameStatus.finished && winnerId == null;

  GameDto({
    required this.id,
    required this.url,
    required this.timeCreatedAt,
    required this.timeEndedAt,
    required this.owner,
    required this.opponent,
    required this.gameStatus,
    required this.winnerId,
    required this.boardMap,
  });

  factory GameDto.fromJson(Map<String, dynamic> json) => _$GameDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GameDtoToJson(this);

  factory GameDto.fromDomain(Game game) {
    final ownerId = game.myUser.isOwner ? game.myUser.id : game.teammateUser!.id;
    return GameDto(
      id: game.id,
      url: game.url,
      timeCreatedAt: game.createdAt,
      timeEndedAt: game.endedAt,
      owner: GameUserDto(id: ownerId),
      opponent: game.teammateUser?.let((user) => GameUserDto(id: user.id)),
      gameStatus: game.gameStatus,
      winnerId: game.winnerId,
      boardMap: Map.fromEntries(
        game.boardMap.values.nonNulls.map((value) => CellDto.fromDomain(value).let((dto) => MapEntry(dto.id, dto))),
      ),
    );
  }

  GameDto copyWith({
    GameId? id,
    String? url,
    DateTime? timeCreatedAt,
    DateTime? timeEndedAt,
    GameUserDto? owner,
    GameUserDto? opponent,
    GameStatus? gameStatus,
    UserId? winnerId,
    Map<CellId, CellDto>? boardMap,
  }) {
    return GameDto(
      id: id ?? this.id,
      url: url ?? this.url,
      timeCreatedAt: timeCreatedAt ?? this.timeCreatedAt,
      timeEndedAt: timeEndedAt ?? this.timeEndedAt,
      owner: owner ?? this.owner,
      opponent: opponent ?? this.opponent,
      gameStatus: gameStatus ?? this.gameStatus,
      winnerId: winnerId ?? this.winnerId,
      boardMap: boardMap ?? this.boardMap,
    );
  }

  static int? _datetimeMapToJson(DateTime? dateTime) =>
      dateTime == null ? null : FirebaseDateConverter.datetimeMapToJson(dateTime);
  static DateTime? _datetimeMapFromJson(dynamic timeStamp) =>
      timeStamp == null ? null : FirebaseDateConverter.datetimeMapFromJson(timeStamp);
}
