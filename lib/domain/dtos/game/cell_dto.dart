import 'package:chat_app/domain/common/model_id.dart';
import 'package:chat_app/domain/entities/game/cell.dart';
import 'package:chat_app/domain/entities/game/cell_id.dart';
import 'package:chat_app/domain/entities/user/user.dart';
import 'package:chat_app/domain/models/game/cell_state.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cell_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class CellDto {
  final CellId id;
  final CellState cellState;
  final UserId? winnerId;

  CellDto({
    required this.id,
    required this.cellState,
    required this.winnerId,
  });

  factory CellDto.fromJson(Map<String, dynamic> json) => _$CellDtoFromJson(json);
  Map<String, dynamic> toJson() => _$CellDtoToJson(this);

  factory CellDto.fromDomain(Cell cell) => CellDto(
        id: cell.cellId,
        cellState: cell.cellState,
        winnerId: cell is WinnerCell ? cell.winnerId : null,
      );
}
