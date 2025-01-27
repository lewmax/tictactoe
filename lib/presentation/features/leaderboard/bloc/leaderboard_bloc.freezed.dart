// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeaderboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime dateTime) dateUpdated,
    required TResult Function(List<LeaderboardUser> users) topUsersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime dateTime)? dateUpdated,
    TResult? Function(List<LeaderboardUser> users)? topUsersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime dateTime)? dateUpdated,
    TResult Function(List<LeaderboardUser> users)? topUsersUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DateUpdated value) dateUpdated,
    required TResult Function(_TopUsersUpdated value) topUsersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DateUpdated value)? dateUpdated,
    TResult? Function(_TopUsersUpdated value)? topUsersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DateUpdated value)? dateUpdated,
    TResult Function(_TopUsersUpdated value)? topUsersUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardEventCopyWith<$Res> {
  factory $LeaderboardEventCopyWith(
          LeaderboardEvent value, $Res Function(LeaderboardEvent) then) =
      _$LeaderboardEventCopyWithImpl<$Res, LeaderboardEvent>;
}

/// @nodoc
class _$LeaderboardEventCopyWithImpl<$Res, $Val extends LeaderboardEvent>
    implements $LeaderboardEventCopyWith<$Res> {
  _$LeaderboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaderboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DateUpdatedImplCopyWith<$Res> {
  factory _$$DateUpdatedImplCopyWith(
          _$DateUpdatedImpl value, $Res Function(_$DateUpdatedImpl) then) =
      __$$DateUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime});
}

/// @nodoc
class __$$DateUpdatedImplCopyWithImpl<$Res>
    extends _$LeaderboardEventCopyWithImpl<$Res, _$DateUpdatedImpl>
    implements _$$DateUpdatedImplCopyWith<$Res> {
  __$$DateUpdatedImplCopyWithImpl(
      _$DateUpdatedImpl _value, $Res Function(_$DateUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaderboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
  }) {
    return _then(_$DateUpdatedImpl(
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateUpdatedImpl implements _DateUpdated {
  const _$DateUpdatedImpl(this.dateTime);

  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'LeaderboardEvent.dateUpdated(dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateUpdatedImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  /// Create a copy of LeaderboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateUpdatedImplCopyWith<_$DateUpdatedImpl> get copyWith =>
      __$$DateUpdatedImplCopyWithImpl<_$DateUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime dateTime) dateUpdated,
    required TResult Function(List<LeaderboardUser> users) topUsersUpdated,
  }) {
    return dateUpdated(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime dateTime)? dateUpdated,
    TResult? Function(List<LeaderboardUser> users)? topUsersUpdated,
  }) {
    return dateUpdated?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime dateTime)? dateUpdated,
    TResult Function(List<LeaderboardUser> users)? topUsersUpdated,
    required TResult orElse(),
  }) {
    if (dateUpdated != null) {
      return dateUpdated(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DateUpdated value) dateUpdated,
    required TResult Function(_TopUsersUpdated value) topUsersUpdated,
  }) {
    return dateUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DateUpdated value)? dateUpdated,
    TResult? Function(_TopUsersUpdated value)? topUsersUpdated,
  }) {
    return dateUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DateUpdated value)? dateUpdated,
    TResult Function(_TopUsersUpdated value)? topUsersUpdated,
    required TResult orElse(),
  }) {
    if (dateUpdated != null) {
      return dateUpdated(this);
    }
    return orElse();
  }
}

abstract class _DateUpdated implements LeaderboardEvent {
  const factory _DateUpdated(final DateTime dateTime) = _$DateUpdatedImpl;

  DateTime get dateTime;

  /// Create a copy of LeaderboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateUpdatedImplCopyWith<_$DateUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TopUsersUpdatedImplCopyWith<$Res> {
  factory _$$TopUsersUpdatedImplCopyWith(_$TopUsersUpdatedImpl value,
          $Res Function(_$TopUsersUpdatedImpl) then) =
      __$$TopUsersUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LeaderboardUser> users});
}

/// @nodoc
class __$$TopUsersUpdatedImplCopyWithImpl<$Res>
    extends _$LeaderboardEventCopyWithImpl<$Res, _$TopUsersUpdatedImpl>
    implements _$$TopUsersUpdatedImplCopyWith<$Res> {
  __$$TopUsersUpdatedImplCopyWithImpl(
      _$TopUsersUpdatedImpl _value, $Res Function(_$TopUsersUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaderboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$TopUsersUpdatedImpl(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<LeaderboardUser>,
    ));
  }
}

/// @nodoc

class _$TopUsersUpdatedImpl implements _TopUsersUpdated {
  const _$TopUsersUpdatedImpl(final List<LeaderboardUser> users)
      : _users = users;

  final List<LeaderboardUser> _users;
  @override
  List<LeaderboardUser> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'LeaderboardEvent.topUsersUpdated(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopUsersUpdatedImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  /// Create a copy of LeaderboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopUsersUpdatedImplCopyWith<_$TopUsersUpdatedImpl> get copyWith =>
      __$$TopUsersUpdatedImplCopyWithImpl<_$TopUsersUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime dateTime) dateUpdated,
    required TResult Function(List<LeaderboardUser> users) topUsersUpdated,
  }) {
    return topUsersUpdated(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime dateTime)? dateUpdated,
    TResult? Function(List<LeaderboardUser> users)? topUsersUpdated,
  }) {
    return topUsersUpdated?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime dateTime)? dateUpdated,
    TResult Function(List<LeaderboardUser> users)? topUsersUpdated,
    required TResult orElse(),
  }) {
    if (topUsersUpdated != null) {
      return topUsersUpdated(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DateUpdated value) dateUpdated,
    required TResult Function(_TopUsersUpdated value) topUsersUpdated,
  }) {
    return topUsersUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DateUpdated value)? dateUpdated,
    TResult? Function(_TopUsersUpdated value)? topUsersUpdated,
  }) {
    return topUsersUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DateUpdated value)? dateUpdated,
    TResult Function(_TopUsersUpdated value)? topUsersUpdated,
    required TResult orElse(),
  }) {
    if (topUsersUpdated != null) {
      return topUsersUpdated(this);
    }
    return orElse();
  }
}

abstract class _TopUsersUpdated implements LeaderboardEvent {
  const factory _TopUsersUpdated(final List<LeaderboardUser> users) =
      _$TopUsersUpdatedImpl;

  List<LeaderboardUser> get users;

  /// Create a copy of LeaderboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopUsersUpdatedImplCopyWith<_$TopUsersUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LeaderboardState {
  DateTime get datetime => throw _privateConstructorUsedError;
  List<LeaderboardUser> get topUsers => throw _privateConstructorUsedError;

  /// Create a copy of LeaderboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaderboardStateCopyWith<LeaderboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardStateCopyWith<$Res> {
  factory $LeaderboardStateCopyWith(
          LeaderboardState value, $Res Function(LeaderboardState) then) =
      _$LeaderboardStateCopyWithImpl<$Res, LeaderboardState>;
  @useResult
  $Res call({DateTime datetime, List<LeaderboardUser> topUsers});
}

/// @nodoc
class _$LeaderboardStateCopyWithImpl<$Res, $Val extends LeaderboardState>
    implements $LeaderboardStateCopyWith<$Res> {
  _$LeaderboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaderboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetime = null,
    Object? topUsers = null,
  }) {
    return _then(_value.copyWith(
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      topUsers: null == topUsers
          ? _value.topUsers
          : topUsers // ignore: cast_nullable_to_non_nullable
              as List<LeaderboardUser>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaderboardStateImplCopyWith<$Res>
    implements $LeaderboardStateCopyWith<$Res> {
  factory _$$LeaderboardStateImplCopyWith(_$LeaderboardStateImpl value,
          $Res Function(_$LeaderboardStateImpl) then) =
      __$$LeaderboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime datetime, List<LeaderboardUser> topUsers});
}

/// @nodoc
class __$$LeaderboardStateImplCopyWithImpl<$Res>
    extends _$LeaderboardStateCopyWithImpl<$Res, _$LeaderboardStateImpl>
    implements _$$LeaderboardStateImplCopyWith<$Res> {
  __$$LeaderboardStateImplCopyWithImpl(_$LeaderboardStateImpl _value,
      $Res Function(_$LeaderboardStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaderboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetime = null,
    Object? topUsers = null,
  }) {
    return _then(_$LeaderboardStateImpl(
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      topUsers: null == topUsers
          ? _value._topUsers
          : topUsers // ignore: cast_nullable_to_non_nullable
              as List<LeaderboardUser>,
    ));
  }
}

/// @nodoc

class _$LeaderboardStateImpl implements _LeaderboardState {
  const _$LeaderboardStateImpl(
      {required this.datetime, final List<LeaderboardUser> topUsers = const []})
      : _topUsers = topUsers;

  @override
  final DateTime datetime;
  final List<LeaderboardUser> _topUsers;
  @override
  @JsonKey()
  List<LeaderboardUser> get topUsers {
    if (_topUsers is EqualUnmodifiableListView) return _topUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topUsers);
  }

  @override
  String toString() {
    return 'LeaderboardState(datetime: $datetime, topUsers: $topUsers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardStateImpl &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime) &&
            const DeepCollectionEquality().equals(other._topUsers, _topUsers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, datetime, const DeepCollectionEquality().hash(_topUsers));

  /// Create a copy of LeaderboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardStateImplCopyWith<_$LeaderboardStateImpl> get copyWith =>
      __$$LeaderboardStateImplCopyWithImpl<_$LeaderboardStateImpl>(
          this, _$identity);
}

abstract class _LeaderboardState implements LeaderboardState {
  const factory _LeaderboardState(
      {required final DateTime datetime,
      final List<LeaderboardUser> topUsers}) = _$LeaderboardStateImpl;

  @override
  DateTime get datetime;
  @override
  List<LeaderboardUser> get topUsers;

  /// Create a copy of LeaderboardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaderboardStateImplCopyWith<_$LeaderboardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
