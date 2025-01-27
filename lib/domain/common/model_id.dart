import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_id.freezed.dart';

@Freezed(fromJson: false, toJson: false, copyWith: false)
class ModelId<Id extends Object, RawValue extends Object> with _$ModelId<Id, RawValue> {
  const ModelId._();

  const factory ModelId({
    required RawValue rawValue,
  }) = _ModelId;

  factory ModelId.fromJson(dynamic json) => ModelId(rawValue: json as RawValue);

  dynamic toJson() => rawValue;
}
