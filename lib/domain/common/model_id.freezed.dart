// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ModelId<Id extends Object, RawValue extends Object> {
  RawValue get rawValue => throw _privateConstructorUsedError;
}

/// @nodoc

class _$ModelIdImpl<Id extends Object, RawValue extends Object> extends _ModelId<Id, RawValue> {
  const _$ModelIdImpl({required this.rawValue}) : super._();

  @override
  final RawValue rawValue;

  @override
  String toString() {
    return 'ModelId<$Id, $RawValue>(rawValue: $rawValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelIdImpl<Id, RawValue> &&
            const DeepCollectionEquality().equals(other.rawValue, rawValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(rawValue));
}

abstract class _ModelId<Id extends Object, RawValue extends Object> extends ModelId<Id, RawValue> {
  const factory _ModelId({required final RawValue rawValue}) = _$ModelIdImpl<Id, RawValue>;
  const _ModelId._() : super._();

  @override
  RawValue get rawValue;
}
