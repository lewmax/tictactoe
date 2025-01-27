import 'package:chat_app/domain/dtos/game/cell_dto.dart';
import 'package:chat_app/domain/entities/game/cell_id.dart';

abstract class GameConverter {
  static Map<CellId, CellDto> boardMapFromJson(Map<String, dynamic> json) =>
      json.map((key, value) => MapEntry(CellId.fromJson(key), CellDto.fromJson(value as Map<String, dynamic>)));

  static Map<String, dynamic> boardMapToJson(Map<CellId, CellDto> boardMap) =>
      boardMap.map((key, value) => MapEntry(key.toJson(), value.toJson()));
}
