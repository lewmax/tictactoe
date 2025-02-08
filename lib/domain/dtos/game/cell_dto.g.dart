// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cell_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CellDto _$CellDtoFromJson(Map<String, dynamic> json) => CellDto(
      id: CellId.fromJson(json['id'] as String),
      cellState: $enumDecode(_$CellStateEnumMap, json['cellState']),
      winnerId: json['winnerId'] == null
          ? null
          : ModelId<User, String>.fromJson(json['winnerId']),
    );

Map<String, dynamic> _$CellDtoToJson(CellDto instance) => <String, dynamic>{
      'id': instance.id.toJson(),
      'cellState': _$CellStateEnumMap[instance.cellState]!,
      'winnerId': instance.winnerId?.toJson(),
    };

const _$CellStateEnumMap = {
  CellState.owner: 'owner',
  CellState.opponent: 'opponent',
};
