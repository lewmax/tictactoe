// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) userUpdated,
    required TResult Function(DateTime dateTime) dateUpdated,
    required TResult Function(ModelId<Game, String> id) openGame,
    required TResult Function(
            Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)
        gamesUpdated,
    required TResult Function(List<LeaderboardUser> leaderboardUsers) topLeaderboardUpdated,
    required TResult Function() sendFeedback,
    required TResult Function() requiresUpdate,
    required TResult Function(String error) errorReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? userUpdated,
    TResult? Function(DateTime dateTime)? dateUpdated,
    TResult? Function(ModelId<Game, String> id)? openGame,
    TResult? Function(Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)?
        gamesUpdated,
    TResult? Function(List<LeaderboardUser> leaderboardUsers)? topLeaderboardUpdated,
    TResult? Function()? sendFeedback,
    TResult? Function()? requiresUpdate,
    TResult? Function(String error)? errorReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? userUpdated,
    TResult Function(DateTime dateTime)? dateUpdated,
    TResult Function(ModelId<Game, String> id)? openGame,
    TResult Function(Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)?
        gamesUpdated,
    TResult Function(List<LeaderboardUser> leaderboardUsers)? topLeaderboardUpdated,
    TResult Function()? sendFeedback,
    TResult Function()? requiresUpdate,
    TResult Function(String error)? errorReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserUpdated value) userUpdated,
    required TResult Function(_DateUpdated value) dateUpdated,
    required TResult Function(_OpenGame value) openGame,
    required TResult Function(_GamesUpdated value) gamesUpdated,
    required TResult Function(_TopLeaderboardUpdated value) topLeaderboardUpdated,
    required TResult Function(_SendFeedback value) sendFeedback,
    required TResult Function(_RequiresUpdate value) requiresUpdate,
    required TResult Function(_ErrorReceived value) errorReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserUpdated value)? userUpdated,
    TResult? Function(_DateUpdated value)? dateUpdated,
    TResult? Function(_OpenGame value)? openGame,
    TResult? Function(_GamesUpdated value)? gamesUpdated,
    TResult? Function(_TopLeaderboardUpdated value)? topLeaderboardUpdated,
    TResult? Function(_SendFeedback value)? sendFeedback,
    TResult? Function(_RequiresUpdate value)? requiresUpdate,
    TResult? Function(_ErrorReceived value)? errorReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserUpdated value)? userUpdated,
    TResult Function(_DateUpdated value)? dateUpdated,
    TResult Function(_OpenGame value)? openGame,
    TResult Function(_GamesUpdated value)? gamesUpdated,
    TResult Function(_TopLeaderboardUpdated value)? topLeaderboardUpdated,
    TResult Function(_SendFeedback value)? sendFeedback,
    TResult Function(_RequiresUpdate value)? requiresUpdate,
    TResult Function(_ErrorReceived value)? errorReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) = _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserUpdatedImplCopyWith<$Res> {
  factory _$$UserUpdatedImplCopyWith(_$UserUpdatedImpl value, $Res Function(_$UserUpdatedImpl) then) =
      __$$UserUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User? user});
}

/// @nodoc
class __$$UserUpdatedImplCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res, _$UserUpdatedImpl>
    implements _$$UserUpdatedImplCopyWith<$Res> {
  __$$UserUpdatedImplCopyWithImpl(_$UserUpdatedImpl _value, $Res Function(_$UserUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$UserUpdatedImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$UserUpdatedImpl implements _UserUpdated {
  const _$UserUpdatedImpl(this.user);

  @override
  final User? user;

  @override
  String toString() {
    return 'HomeEvent.userUpdated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdatedImplCopyWith<_$UserUpdatedImpl> get copyWith =>
      __$$UserUpdatedImplCopyWithImpl<_$UserUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) userUpdated,
    required TResult Function(DateTime dateTime) dateUpdated,
    required TResult Function(ModelId<Game, String> id) openGame,
    required TResult Function(
            Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)
        gamesUpdated,
    required TResult Function(List<LeaderboardUser> leaderboardUsers) topLeaderboardUpdated,
    required TResult Function() sendFeedback,
    required TResult Function() requiresUpdate,
    required TResult Function(String error) errorReceived,
  }) {
    return userUpdated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? userUpdated,
    TResult? Function(DateTime dateTime)? dateUpdated,
    TResult? Function(ModelId<Game, String> id)? openGame,
    TResult? Function(Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)?
        gamesUpdated,
    TResult? Function(List<LeaderboardUser> leaderboardUsers)? topLeaderboardUpdated,
    TResult? Function()? sendFeedback,
    TResult? Function()? requiresUpdate,
    TResult? Function(String error)? errorReceived,
  }) {
    return userUpdated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? userUpdated,
    TResult Function(DateTime dateTime)? dateUpdated,
    TResult Function(ModelId<Game, String> id)? openGame,
    TResult Function(Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)?
        gamesUpdated,
    TResult Function(List<LeaderboardUser> leaderboardUsers)? topLeaderboardUpdated,
    TResult Function()? sendFeedback,
    TResult Function()? requiresUpdate,
    TResult Function(String error)? errorReceived,
    required TResult orElse(),
  }) {
    if (userUpdated != null) {
      return userUpdated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserUpdated value) userUpdated,
    required TResult Function(_DateUpdated value) dateUpdated,
    required TResult Function(_OpenGame value) openGame,
    required TResult Function(_GamesUpdated value) gamesUpdated,
    required TResult Function(_TopLeaderboardUpdated value) topLeaderboardUpdated,
    required TResult Function(_SendFeedback value) sendFeedback,
    required TResult Function(_RequiresUpdate value) requiresUpdate,
    required TResult Function(_ErrorReceived value) errorReceived,
  }) {
    return userUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserUpdated value)? userUpdated,
    TResult? Function(_DateUpdated value)? dateUpdated,
    TResult? Function(_OpenGame value)? openGame,
    TResult? Function(_GamesUpdated value)? gamesUpdated,
    TResult? Function(_TopLeaderboardUpdated value)? topLeaderboardUpdated,
    TResult? Function(_SendFeedback value)? sendFeedback,
    TResult? Function(_RequiresUpdate value)? requiresUpdate,
    TResult? Function(_ErrorReceived value)? errorReceived,
  }) {
    return userUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserUpdated value)? userUpdated,
    TResult Function(_DateUpdated value)? dateUpdated,
    TResult Function(_OpenGame value)? openGame,
    TResult Function(_GamesUpdated value)? gamesUpdated,
    TResult Function(_TopLeaderboardUpdated value)? topLeaderboardUpdated,
    TResult Function(_SendFeedback value)? sendFeedback,
    TResult Function(_RequiresUpdate value)? requiresUpdate,
    TResult Function(_ErrorReceived value)? errorReceived,
    required TResult orElse(),
  }) {
    if (userUpdated != null) {
      return userUpdated(this);
    }
    return orElse();
  }
}

abstract class _UserUpdated implements HomeEvent {
  const factory _UserUpdated(final User? user) = _$UserUpdatedImpl;

  User? get user;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserUpdatedImplCopyWith<_$UserUpdatedImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateUpdatedImplCopyWith<$Res> {
  factory _$$DateUpdatedImplCopyWith(_$DateUpdatedImpl value, $Res Function(_$DateUpdatedImpl) then) =
      __$$DateUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime});
}

/// @nodoc
class __$$DateUpdatedImplCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res, _$DateUpdatedImpl>
    implements _$$DateUpdatedImplCopyWith<$Res> {
  __$$DateUpdatedImplCopyWithImpl(_$DateUpdatedImpl _value, $Res Function(_$DateUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
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
    return 'HomeEvent.dateUpdated(dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateUpdatedImpl &&
            (identical(other.dateTime, dateTime) || other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateUpdatedImplCopyWith<_$DateUpdatedImpl> get copyWith =>
      __$$DateUpdatedImplCopyWithImpl<_$DateUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) userUpdated,
    required TResult Function(DateTime dateTime) dateUpdated,
    required TResult Function(ModelId<Game, String> id) openGame,
    required TResult Function(
            Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)
        gamesUpdated,
    required TResult Function(List<LeaderboardUser> leaderboardUsers) topLeaderboardUpdated,
    required TResult Function() sendFeedback,
    required TResult Function() requiresUpdate,
    required TResult Function(String error) errorReceived,
  }) {
    return dateUpdated(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? userUpdated,
    TResult? Function(DateTime dateTime)? dateUpdated,
    TResult? Function(ModelId<Game, String> id)? openGame,
    TResult? Function(Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)?
        gamesUpdated,
    TResult? Function(List<LeaderboardUser> leaderboardUsers)? topLeaderboardUpdated,
    TResult? Function()? sendFeedback,
    TResult? Function()? requiresUpdate,
    TResult? Function(String error)? errorReceived,
  }) {
    return dateUpdated?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? userUpdated,
    TResult Function(DateTime dateTime)? dateUpdated,
    TResult Function(ModelId<Game, String> id)? openGame,
    TResult Function(Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)?
        gamesUpdated,
    TResult Function(List<LeaderboardUser> leaderboardUsers)? topLeaderboardUpdated,
    TResult Function()? sendFeedback,
    TResult Function()? requiresUpdate,
    TResult Function(String error)? errorReceived,
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
    required TResult Function(_UserUpdated value) userUpdated,
    required TResult Function(_DateUpdated value) dateUpdated,
    required TResult Function(_OpenGame value) openGame,
    required TResult Function(_GamesUpdated value) gamesUpdated,
    required TResult Function(_TopLeaderboardUpdated value) topLeaderboardUpdated,
    required TResult Function(_SendFeedback value) sendFeedback,
    required TResult Function(_RequiresUpdate value) requiresUpdate,
    required TResult Function(_ErrorReceived value) errorReceived,
  }) {
    return dateUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserUpdated value)? userUpdated,
    TResult? Function(_DateUpdated value)? dateUpdated,
    TResult? Function(_OpenGame value)? openGame,
    TResult? Function(_GamesUpdated value)? gamesUpdated,
    TResult? Function(_TopLeaderboardUpdated value)? topLeaderboardUpdated,
    TResult? Function(_SendFeedback value)? sendFeedback,
    TResult? Function(_RequiresUpdate value)? requiresUpdate,
    TResult? Function(_ErrorReceived value)? errorReceived,
  }) {
    return dateUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserUpdated value)? userUpdated,
    TResult Function(_DateUpdated value)? dateUpdated,
    TResult Function(_OpenGame value)? openGame,
    TResult Function(_GamesUpdated value)? gamesUpdated,
    TResult Function(_TopLeaderboardUpdated value)? topLeaderboardUpdated,
    TResult Function(_SendFeedback value)? sendFeedback,
    TResult Function(_RequiresUpdate value)? requiresUpdate,
    TResult Function(_ErrorReceived value)? errorReceived,
    required TResult orElse(),
  }) {
    if (dateUpdated != null) {
      return dateUpdated(this);
    }
    return orElse();
  }
}

abstract class _DateUpdated implements HomeEvent {
  const factory _DateUpdated(final DateTime dateTime) = _$DateUpdatedImpl;

  DateTime get dateTime;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateUpdatedImplCopyWith<_$DateUpdatedImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OpenGameImplCopyWith<$Res> {
  factory _$$OpenGameImplCopyWith(_$OpenGameImpl value, $Res Function(_$OpenGameImpl) then) =
      __$$OpenGameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ModelId<Game, String> id});
}

/// @nodoc
class __$$OpenGameImplCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res, _$OpenGameImpl>
    implements _$$OpenGameImplCopyWith<$Res> {
  __$$OpenGameImplCopyWithImpl(_$OpenGameImpl _value, $Res Function(_$OpenGameImpl) _then) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$OpenGameImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ModelId<Game, String>,
    ));
  }
}

/// @nodoc

class _$OpenGameImpl implements _OpenGame {
  const _$OpenGameImpl(this.id);

  @override
  final ModelId<Game, String> id;

  @override
  String toString() {
    return 'HomeEvent.openGame(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OpenGameImpl && (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenGameImplCopyWith<_$OpenGameImpl> get copyWith =>
      __$$OpenGameImplCopyWithImpl<_$OpenGameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) userUpdated,
    required TResult Function(DateTime dateTime) dateUpdated,
    required TResult Function(ModelId<Game, String> id) openGame,
    required TResult Function(
            Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)
        gamesUpdated,
    required TResult Function(List<LeaderboardUser> leaderboardUsers) topLeaderboardUpdated,
    required TResult Function() sendFeedback,
    required TResult Function() requiresUpdate,
    required TResult Function(String error) errorReceived,
  }) {
    return openGame(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? userUpdated,
    TResult? Function(DateTime dateTime)? dateUpdated,
    TResult? Function(ModelId<Game, String> id)? openGame,
    TResult? Function(Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)?
        gamesUpdated,
    TResult? Function(List<LeaderboardUser> leaderboardUsers)? topLeaderboardUpdated,
    TResult? Function()? sendFeedback,
    TResult? Function()? requiresUpdate,
    TResult? Function(String error)? errorReceived,
  }) {
    return openGame?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? userUpdated,
    TResult Function(DateTime dateTime)? dateUpdated,
    TResult Function(ModelId<Game, String> id)? openGame,
    TResult Function(Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)?
        gamesUpdated,
    TResult Function(List<LeaderboardUser> leaderboardUsers)? topLeaderboardUpdated,
    TResult Function()? sendFeedback,
    TResult Function()? requiresUpdate,
    TResult Function(String error)? errorReceived,
    required TResult orElse(),
  }) {
    if (openGame != null) {
      return openGame(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserUpdated value) userUpdated,
    required TResult Function(_DateUpdated value) dateUpdated,
    required TResult Function(_OpenGame value) openGame,
    required TResult Function(_GamesUpdated value) gamesUpdated,
    required TResult Function(_TopLeaderboardUpdated value) topLeaderboardUpdated,
    required TResult Function(_SendFeedback value) sendFeedback,
    required TResult Function(_RequiresUpdate value) requiresUpdate,
    required TResult Function(_ErrorReceived value) errorReceived,
  }) {
    return openGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserUpdated value)? userUpdated,
    TResult? Function(_DateUpdated value)? dateUpdated,
    TResult? Function(_OpenGame value)? openGame,
    TResult? Function(_GamesUpdated value)? gamesUpdated,
    TResult? Function(_TopLeaderboardUpdated value)? topLeaderboardUpdated,
    TResult? Function(_SendFeedback value)? sendFeedback,
    TResult? Function(_RequiresUpdate value)? requiresUpdate,
    TResult? Function(_ErrorReceived value)? errorReceived,
  }) {
    return openGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserUpdated value)? userUpdated,
    TResult Function(_DateUpdated value)? dateUpdated,
    TResult Function(_OpenGame value)? openGame,
    TResult Function(_GamesUpdated value)? gamesUpdated,
    TResult Function(_TopLeaderboardUpdated value)? topLeaderboardUpdated,
    TResult Function(_SendFeedback value)? sendFeedback,
    TResult Function(_RequiresUpdate value)? requiresUpdate,
    TResult Function(_ErrorReceived value)? errorReceived,
    required TResult orElse(),
  }) {
    if (openGame != null) {
      return openGame(this);
    }
    return orElse();
  }
}

abstract class _OpenGame implements HomeEvent {
  const factory _OpenGame(final ModelId<Game, String> id) = _$OpenGameImpl;

  ModelId<Game, String> get id;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenGameImplCopyWith<_$OpenGameImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GamesUpdatedImplCopyWith<$Res> {
  factory _$$GamesUpdatedImplCopyWith(_$GamesUpdatedImpl value, $Res Function(_$GamesUpdatedImpl) then) =
      __$$GamesUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames});
}

/// @nodoc
class __$$GamesUpdatedImplCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res, _$GamesUpdatedImpl>
    implements _$$GamesUpdatedImplCopyWith<$Res> {
  __$$GamesUpdatedImplCopyWithImpl(_$GamesUpdatedImpl _value, $Res Function(_$GamesUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gamesInProgress = null,
    Object? recentGames = null,
  }) {
    return _then(_$GamesUpdatedImpl(
      null == gamesInProgress
          ? _value._gamesInProgress
          : gamesInProgress // ignore: cast_nullable_to_non_nullable
              as Map<ModelId<Game, String>, Game>,
      null == recentGames
          ? _value._recentGames
          : recentGames // ignore: cast_nullable_to_non_nullable
              as Map<ModelId<Game, String>, Game>,
    ));
  }
}

/// @nodoc

class _$GamesUpdatedImpl implements _GamesUpdated {
  const _$GamesUpdatedImpl(
      final Map<ModelId<Game, String>, Game> gamesInProgress, final Map<ModelId<Game, String>, Game> recentGames)
      : _gamesInProgress = gamesInProgress,
        _recentGames = recentGames;

  final Map<ModelId<Game, String>, Game> _gamesInProgress;
  @override
  Map<ModelId<Game, String>, Game> get gamesInProgress {
    if (_gamesInProgress is EqualUnmodifiableMapView) return _gamesInProgress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_gamesInProgress);
  }

  final Map<ModelId<Game, String>, Game> _recentGames;
  @override
  Map<ModelId<Game, String>, Game> get recentGames {
    if (_recentGames is EqualUnmodifiableMapView) return _recentGames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_recentGames);
  }

  @override
  String toString() {
    return 'HomeEvent.gamesUpdated(gamesInProgress: $gamesInProgress, recentGames: $recentGames)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamesUpdatedImpl &&
            const DeepCollectionEquality().equals(other._gamesInProgress, _gamesInProgress) &&
            const DeepCollectionEquality().equals(other._recentGames, _recentGames));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_gamesInProgress),
      const DeepCollectionEquality().hash(_recentGames));

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GamesUpdatedImplCopyWith<_$GamesUpdatedImpl> get copyWith =>
      __$$GamesUpdatedImplCopyWithImpl<_$GamesUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) userUpdated,
    required TResult Function(DateTime dateTime) dateUpdated,
    required TResult Function(ModelId<Game, String> id) openGame,
    required TResult Function(
            Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)
        gamesUpdated,
    required TResult Function(List<LeaderboardUser> leaderboardUsers) topLeaderboardUpdated,
    required TResult Function() sendFeedback,
    required TResult Function() requiresUpdate,
    required TResult Function(String error) errorReceived,
  }) {
    return gamesUpdated(gamesInProgress, recentGames);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? userUpdated,
    TResult? Function(DateTime dateTime)? dateUpdated,
    TResult? Function(ModelId<Game, String> id)? openGame,
    TResult? Function(Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)?
        gamesUpdated,
    TResult? Function(List<LeaderboardUser> leaderboardUsers)? topLeaderboardUpdated,
    TResult? Function()? sendFeedback,
    TResult? Function()? requiresUpdate,
    TResult? Function(String error)? errorReceived,
  }) {
    return gamesUpdated?.call(gamesInProgress, recentGames);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? userUpdated,
    TResult Function(DateTime dateTime)? dateUpdated,
    TResult Function(ModelId<Game, String> id)? openGame,
    TResult Function(Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)?
        gamesUpdated,
    TResult Function(List<LeaderboardUser> leaderboardUsers)? topLeaderboardUpdated,
    TResult Function()? sendFeedback,
    TResult Function()? requiresUpdate,
    TResult Function(String error)? errorReceived,
    required TResult orElse(),
  }) {
    if (gamesUpdated != null) {
      return gamesUpdated(gamesInProgress, recentGames);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserUpdated value) userUpdated,
    required TResult Function(_DateUpdated value) dateUpdated,
    required TResult Function(_OpenGame value) openGame,
    required TResult Function(_GamesUpdated value) gamesUpdated,
    required TResult Function(_TopLeaderboardUpdated value) topLeaderboardUpdated,
    required TResult Function(_SendFeedback value) sendFeedback,
    required TResult Function(_RequiresUpdate value) requiresUpdate,
    required TResult Function(_ErrorReceived value) errorReceived,
  }) {
    return gamesUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserUpdated value)? userUpdated,
    TResult? Function(_DateUpdated value)? dateUpdated,
    TResult? Function(_OpenGame value)? openGame,
    TResult? Function(_GamesUpdated value)? gamesUpdated,
    TResult? Function(_TopLeaderboardUpdated value)? topLeaderboardUpdated,
    TResult? Function(_SendFeedback value)? sendFeedback,
    TResult? Function(_RequiresUpdate value)? requiresUpdate,
    TResult? Function(_ErrorReceived value)? errorReceived,
  }) {
    return gamesUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserUpdated value)? userUpdated,
    TResult Function(_DateUpdated value)? dateUpdated,
    TResult Function(_OpenGame value)? openGame,
    TResult Function(_GamesUpdated value)? gamesUpdated,
    TResult Function(_TopLeaderboardUpdated value)? topLeaderboardUpdated,
    TResult Function(_SendFeedback value)? sendFeedback,
    TResult Function(_RequiresUpdate value)? requiresUpdate,
    TResult Function(_ErrorReceived value)? errorReceived,
    required TResult orElse(),
  }) {
    if (gamesUpdated != null) {
      return gamesUpdated(this);
    }
    return orElse();
  }
}

abstract class _GamesUpdated implements HomeEvent {
  const factory _GamesUpdated(
          final Map<ModelId<Game, String>, Game> gamesInProgress, final Map<ModelId<Game, String>, Game> recentGames) =
      _$GamesUpdatedImpl;

  Map<ModelId<Game, String>, Game> get gamesInProgress;
  Map<ModelId<Game, String>, Game> get recentGames;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GamesUpdatedImplCopyWith<_$GamesUpdatedImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TopLeaderboardUpdatedImplCopyWith<$Res> {
  factory _$$TopLeaderboardUpdatedImplCopyWith(
          _$TopLeaderboardUpdatedImpl value, $Res Function(_$TopLeaderboardUpdatedImpl) then) =
      __$$TopLeaderboardUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LeaderboardUser> leaderboardUsers});
}

/// @nodoc
class __$$TopLeaderboardUpdatedImplCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res, _$TopLeaderboardUpdatedImpl>
    implements _$$TopLeaderboardUpdatedImplCopyWith<$Res> {
  __$$TopLeaderboardUpdatedImplCopyWithImpl(
      _$TopLeaderboardUpdatedImpl _value, $Res Function(_$TopLeaderboardUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaderboardUsers = null,
  }) {
    return _then(_$TopLeaderboardUpdatedImpl(
      null == leaderboardUsers
          ? _value._leaderboardUsers
          : leaderboardUsers // ignore: cast_nullable_to_non_nullable
              as List<LeaderboardUser>,
    ));
  }
}

/// @nodoc

class _$TopLeaderboardUpdatedImpl implements _TopLeaderboardUpdated {
  const _$TopLeaderboardUpdatedImpl(final List<LeaderboardUser> leaderboardUsers)
      : _leaderboardUsers = leaderboardUsers;

  final List<LeaderboardUser> _leaderboardUsers;
  @override
  List<LeaderboardUser> get leaderboardUsers {
    if (_leaderboardUsers is EqualUnmodifiableListView) return _leaderboardUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leaderboardUsers);
  }

  @override
  String toString() {
    return 'HomeEvent.topLeaderboardUpdated(leaderboardUsers: $leaderboardUsers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopLeaderboardUpdatedImpl &&
            const DeepCollectionEquality().equals(other._leaderboardUsers, _leaderboardUsers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_leaderboardUsers));

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopLeaderboardUpdatedImplCopyWith<_$TopLeaderboardUpdatedImpl> get copyWith =>
      __$$TopLeaderboardUpdatedImplCopyWithImpl<_$TopLeaderboardUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) userUpdated,
    required TResult Function(DateTime dateTime) dateUpdated,
    required TResult Function(ModelId<Game, String> id) openGame,
    required TResult Function(
            Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)
        gamesUpdated,
    required TResult Function(List<LeaderboardUser> leaderboardUsers) topLeaderboardUpdated,
    required TResult Function() sendFeedback,
    required TResult Function() requiresUpdate,
    required TResult Function(String error) errorReceived,
  }) {
    return topLeaderboardUpdated(leaderboardUsers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? userUpdated,
    TResult? Function(DateTime dateTime)? dateUpdated,
    TResult? Function(ModelId<Game, String> id)? openGame,
    TResult? Function(Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)?
        gamesUpdated,
    TResult? Function(List<LeaderboardUser> leaderboardUsers)? topLeaderboardUpdated,
    TResult? Function()? sendFeedback,
    TResult? Function()? requiresUpdate,
    TResult? Function(String error)? errorReceived,
  }) {
    return topLeaderboardUpdated?.call(leaderboardUsers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? userUpdated,
    TResult Function(DateTime dateTime)? dateUpdated,
    TResult Function(ModelId<Game, String> id)? openGame,
    TResult Function(Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)?
        gamesUpdated,
    TResult Function(List<LeaderboardUser> leaderboardUsers)? topLeaderboardUpdated,
    TResult Function()? sendFeedback,
    TResult Function()? requiresUpdate,
    TResult Function(String error)? errorReceived,
    required TResult orElse(),
  }) {
    if (topLeaderboardUpdated != null) {
      return topLeaderboardUpdated(leaderboardUsers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserUpdated value) userUpdated,
    required TResult Function(_DateUpdated value) dateUpdated,
    required TResult Function(_OpenGame value) openGame,
    required TResult Function(_GamesUpdated value) gamesUpdated,
    required TResult Function(_TopLeaderboardUpdated value) topLeaderboardUpdated,
    required TResult Function(_SendFeedback value) sendFeedback,
    required TResult Function(_RequiresUpdate value) requiresUpdate,
    required TResult Function(_ErrorReceived value) errorReceived,
  }) {
    return topLeaderboardUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserUpdated value)? userUpdated,
    TResult? Function(_DateUpdated value)? dateUpdated,
    TResult? Function(_OpenGame value)? openGame,
    TResult? Function(_GamesUpdated value)? gamesUpdated,
    TResult? Function(_TopLeaderboardUpdated value)? topLeaderboardUpdated,
    TResult? Function(_SendFeedback value)? sendFeedback,
    TResult? Function(_RequiresUpdate value)? requiresUpdate,
    TResult? Function(_ErrorReceived value)? errorReceived,
  }) {
    return topLeaderboardUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserUpdated value)? userUpdated,
    TResult Function(_DateUpdated value)? dateUpdated,
    TResult Function(_OpenGame value)? openGame,
    TResult Function(_GamesUpdated value)? gamesUpdated,
    TResult Function(_TopLeaderboardUpdated value)? topLeaderboardUpdated,
    TResult Function(_SendFeedback value)? sendFeedback,
    TResult Function(_RequiresUpdate value)? requiresUpdate,
    TResult Function(_ErrorReceived value)? errorReceived,
    required TResult orElse(),
  }) {
    if (topLeaderboardUpdated != null) {
      return topLeaderboardUpdated(this);
    }
    return orElse();
  }
}

abstract class _TopLeaderboardUpdated implements HomeEvent {
  const factory _TopLeaderboardUpdated(final List<LeaderboardUser> leaderboardUsers) = _$TopLeaderboardUpdatedImpl;

  List<LeaderboardUser> get leaderboardUsers;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopLeaderboardUpdatedImplCopyWith<_$TopLeaderboardUpdatedImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendFeedbackImplCopyWith<$Res> {
  factory _$$SendFeedbackImplCopyWith(_$SendFeedbackImpl value, $Res Function(_$SendFeedbackImpl) then) =
      __$$SendFeedbackImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendFeedbackImplCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res, _$SendFeedbackImpl>
    implements _$$SendFeedbackImplCopyWith<$Res> {
  __$$SendFeedbackImplCopyWithImpl(_$SendFeedbackImpl _value, $Res Function(_$SendFeedbackImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendFeedbackImpl implements _SendFeedback {
  const _$SendFeedbackImpl();

  @override
  String toString() {
    return 'HomeEvent.sendFeedback()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$SendFeedbackImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) userUpdated,
    required TResult Function(DateTime dateTime) dateUpdated,
    required TResult Function(ModelId<Game, String> id) openGame,
    required TResult Function(
            Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)
        gamesUpdated,
    required TResult Function(List<LeaderboardUser> leaderboardUsers) topLeaderboardUpdated,
    required TResult Function() sendFeedback,
    required TResult Function() requiresUpdate,
    required TResult Function(String error) errorReceived,
  }) {
    return sendFeedback();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? userUpdated,
    TResult? Function(DateTime dateTime)? dateUpdated,
    TResult? Function(ModelId<Game, String> id)? openGame,
    TResult? Function(Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)?
        gamesUpdated,
    TResult? Function(List<LeaderboardUser> leaderboardUsers)? topLeaderboardUpdated,
    TResult? Function()? sendFeedback,
    TResult? Function()? requiresUpdate,
    TResult? Function(String error)? errorReceived,
  }) {
    return sendFeedback?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? userUpdated,
    TResult Function(DateTime dateTime)? dateUpdated,
    TResult Function(ModelId<Game, String> id)? openGame,
    TResult Function(Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)?
        gamesUpdated,
    TResult Function(List<LeaderboardUser> leaderboardUsers)? topLeaderboardUpdated,
    TResult Function()? sendFeedback,
    TResult Function()? requiresUpdate,
    TResult Function(String error)? errorReceived,
    required TResult orElse(),
  }) {
    if (sendFeedback != null) {
      return sendFeedback();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserUpdated value) userUpdated,
    required TResult Function(_DateUpdated value) dateUpdated,
    required TResult Function(_OpenGame value) openGame,
    required TResult Function(_GamesUpdated value) gamesUpdated,
    required TResult Function(_TopLeaderboardUpdated value) topLeaderboardUpdated,
    required TResult Function(_SendFeedback value) sendFeedback,
    required TResult Function(_RequiresUpdate value) requiresUpdate,
    required TResult Function(_ErrorReceived value) errorReceived,
  }) {
    return sendFeedback(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserUpdated value)? userUpdated,
    TResult? Function(_DateUpdated value)? dateUpdated,
    TResult? Function(_OpenGame value)? openGame,
    TResult? Function(_GamesUpdated value)? gamesUpdated,
    TResult? Function(_TopLeaderboardUpdated value)? topLeaderboardUpdated,
    TResult? Function(_SendFeedback value)? sendFeedback,
    TResult? Function(_RequiresUpdate value)? requiresUpdate,
    TResult? Function(_ErrorReceived value)? errorReceived,
  }) {
    return sendFeedback?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserUpdated value)? userUpdated,
    TResult Function(_DateUpdated value)? dateUpdated,
    TResult Function(_OpenGame value)? openGame,
    TResult Function(_GamesUpdated value)? gamesUpdated,
    TResult Function(_TopLeaderboardUpdated value)? topLeaderboardUpdated,
    TResult Function(_SendFeedback value)? sendFeedback,
    TResult Function(_RequiresUpdate value)? requiresUpdate,
    TResult Function(_ErrorReceived value)? errorReceived,
    required TResult orElse(),
  }) {
    if (sendFeedback != null) {
      return sendFeedback(this);
    }
    return orElse();
  }
}

abstract class _SendFeedback implements HomeEvent {
  const factory _SendFeedback() = _$SendFeedbackImpl;
}

/// @nodoc
abstract class _$$RequiresUpdateImplCopyWith<$Res> {
  factory _$$RequiresUpdateImplCopyWith(_$RequiresUpdateImpl value, $Res Function(_$RequiresUpdateImpl) then) =
      __$$RequiresUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequiresUpdateImplCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res, _$RequiresUpdateImpl>
    implements _$$RequiresUpdateImplCopyWith<$Res> {
  __$$RequiresUpdateImplCopyWithImpl(_$RequiresUpdateImpl _value, $Res Function(_$RequiresUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RequiresUpdateImpl implements _RequiresUpdate {
  const _$RequiresUpdateImpl();

  @override
  String toString() {
    return 'HomeEvent.requiresUpdate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$RequiresUpdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) userUpdated,
    required TResult Function(DateTime dateTime) dateUpdated,
    required TResult Function(ModelId<Game, String> id) openGame,
    required TResult Function(
            Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)
        gamesUpdated,
    required TResult Function(List<LeaderboardUser> leaderboardUsers) topLeaderboardUpdated,
    required TResult Function() sendFeedback,
    required TResult Function() requiresUpdate,
    required TResult Function(String error) errorReceived,
  }) {
    return requiresUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? userUpdated,
    TResult? Function(DateTime dateTime)? dateUpdated,
    TResult? Function(ModelId<Game, String> id)? openGame,
    TResult? Function(Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)?
        gamesUpdated,
    TResult? Function(List<LeaderboardUser> leaderboardUsers)? topLeaderboardUpdated,
    TResult? Function()? sendFeedback,
    TResult? Function()? requiresUpdate,
    TResult? Function(String error)? errorReceived,
  }) {
    return requiresUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? userUpdated,
    TResult Function(DateTime dateTime)? dateUpdated,
    TResult Function(ModelId<Game, String> id)? openGame,
    TResult Function(Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)?
        gamesUpdated,
    TResult Function(List<LeaderboardUser> leaderboardUsers)? topLeaderboardUpdated,
    TResult Function()? sendFeedback,
    TResult Function()? requiresUpdate,
    TResult Function(String error)? errorReceived,
    required TResult orElse(),
  }) {
    if (requiresUpdate != null) {
      return requiresUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserUpdated value) userUpdated,
    required TResult Function(_DateUpdated value) dateUpdated,
    required TResult Function(_OpenGame value) openGame,
    required TResult Function(_GamesUpdated value) gamesUpdated,
    required TResult Function(_TopLeaderboardUpdated value) topLeaderboardUpdated,
    required TResult Function(_SendFeedback value) sendFeedback,
    required TResult Function(_RequiresUpdate value) requiresUpdate,
    required TResult Function(_ErrorReceived value) errorReceived,
  }) {
    return requiresUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserUpdated value)? userUpdated,
    TResult? Function(_DateUpdated value)? dateUpdated,
    TResult? Function(_OpenGame value)? openGame,
    TResult? Function(_GamesUpdated value)? gamesUpdated,
    TResult? Function(_TopLeaderboardUpdated value)? topLeaderboardUpdated,
    TResult? Function(_SendFeedback value)? sendFeedback,
    TResult? Function(_RequiresUpdate value)? requiresUpdate,
    TResult? Function(_ErrorReceived value)? errorReceived,
  }) {
    return requiresUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserUpdated value)? userUpdated,
    TResult Function(_DateUpdated value)? dateUpdated,
    TResult Function(_OpenGame value)? openGame,
    TResult Function(_GamesUpdated value)? gamesUpdated,
    TResult Function(_TopLeaderboardUpdated value)? topLeaderboardUpdated,
    TResult Function(_SendFeedback value)? sendFeedback,
    TResult Function(_RequiresUpdate value)? requiresUpdate,
    TResult Function(_ErrorReceived value)? errorReceived,
    required TResult orElse(),
  }) {
    if (requiresUpdate != null) {
      return requiresUpdate(this);
    }
    return orElse();
  }
}

abstract class _RequiresUpdate implements HomeEvent {
  const factory _RequiresUpdate() = _$RequiresUpdateImpl;
}

/// @nodoc
abstract class _$$ErrorReceivedImplCopyWith<$Res> {
  factory _$$ErrorReceivedImplCopyWith(_$ErrorReceivedImpl value, $Res Function(_$ErrorReceivedImpl) then) =
      __$$ErrorReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorReceivedImplCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res, _$ErrorReceivedImpl>
    implements _$$ErrorReceivedImplCopyWith<$Res> {
  __$$ErrorReceivedImplCopyWithImpl(_$ErrorReceivedImpl _value, $Res Function(_$ErrorReceivedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorReceivedImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorReceivedImpl implements _ErrorReceived {
  const _$ErrorReceivedImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'HomeEvent.errorReceived(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorReceivedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorReceivedImplCopyWith<_$ErrorReceivedImpl> get copyWith =>
      __$$ErrorReceivedImplCopyWithImpl<_$ErrorReceivedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) userUpdated,
    required TResult Function(DateTime dateTime) dateUpdated,
    required TResult Function(ModelId<Game, String> id) openGame,
    required TResult Function(
            Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)
        gamesUpdated,
    required TResult Function(List<LeaderboardUser> leaderboardUsers) topLeaderboardUpdated,
    required TResult Function() sendFeedback,
    required TResult Function() requiresUpdate,
    required TResult Function(String error) errorReceived,
  }) {
    return errorReceived(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? userUpdated,
    TResult? Function(DateTime dateTime)? dateUpdated,
    TResult? Function(ModelId<Game, String> id)? openGame,
    TResult? Function(Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)?
        gamesUpdated,
    TResult? Function(List<LeaderboardUser> leaderboardUsers)? topLeaderboardUpdated,
    TResult? Function()? sendFeedback,
    TResult? Function()? requiresUpdate,
    TResult? Function(String error)? errorReceived,
  }) {
    return errorReceived?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? userUpdated,
    TResult Function(DateTime dateTime)? dateUpdated,
    TResult Function(ModelId<Game, String> id)? openGame,
    TResult Function(Map<ModelId<Game, String>, Game> gamesInProgress, Map<ModelId<Game, String>, Game> recentGames)?
        gamesUpdated,
    TResult Function(List<LeaderboardUser> leaderboardUsers)? topLeaderboardUpdated,
    TResult Function()? sendFeedback,
    TResult Function()? requiresUpdate,
    TResult Function(String error)? errorReceived,
    required TResult orElse(),
  }) {
    if (errorReceived != null) {
      return errorReceived(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserUpdated value) userUpdated,
    required TResult Function(_DateUpdated value) dateUpdated,
    required TResult Function(_OpenGame value) openGame,
    required TResult Function(_GamesUpdated value) gamesUpdated,
    required TResult Function(_TopLeaderboardUpdated value) topLeaderboardUpdated,
    required TResult Function(_SendFeedback value) sendFeedback,
    required TResult Function(_RequiresUpdate value) requiresUpdate,
    required TResult Function(_ErrorReceived value) errorReceived,
  }) {
    return errorReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserUpdated value)? userUpdated,
    TResult? Function(_DateUpdated value)? dateUpdated,
    TResult? Function(_OpenGame value)? openGame,
    TResult? Function(_GamesUpdated value)? gamesUpdated,
    TResult? Function(_TopLeaderboardUpdated value)? topLeaderboardUpdated,
    TResult? Function(_SendFeedback value)? sendFeedback,
    TResult? Function(_RequiresUpdate value)? requiresUpdate,
    TResult? Function(_ErrorReceived value)? errorReceived,
  }) {
    return errorReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserUpdated value)? userUpdated,
    TResult Function(_DateUpdated value)? dateUpdated,
    TResult Function(_OpenGame value)? openGame,
    TResult Function(_GamesUpdated value)? gamesUpdated,
    TResult Function(_TopLeaderboardUpdated value)? topLeaderboardUpdated,
    TResult Function(_SendFeedback value)? sendFeedback,
    TResult Function(_RequiresUpdate value)? requiresUpdate,
    TResult Function(_ErrorReceived value)? errorReceived,
    required TResult orElse(),
  }) {
    if (errorReceived != null) {
      return errorReceived(this);
    }
    return orElse();
  }
}

abstract class _ErrorReceived implements HomeEvent {
  const factory _ErrorReceived(final String error) = _$ErrorReceivedImpl;

  String get error;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorReceivedImplCopyWith<_$ErrorReceivedImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  List<LeaderboardUser> get topPlayers => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, DateTime datetime, ModelId<Game, String>? gameToOpen,
            List<LeaderboardUser> topPlayers, List<Game> gamesInProgress, List<Game> recentGames, String? error)
        user,
    required TResult Function(List<LeaderboardUser> topPlayers, String? error) noUser,
    required TResult Function(String? error, List<LeaderboardUser> topPlayers) requiresUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, DateTime datetime, ModelId<Game, String>? gameToOpen, List<LeaderboardUser> topPlayers,
            List<Game> gamesInProgress, List<Game> recentGames, String? error)?
        user,
    TResult? Function(List<LeaderboardUser> topPlayers, String? error)? noUser,
    TResult? Function(String? error, List<LeaderboardUser> topPlayers)? requiresUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, DateTime datetime, ModelId<Game, String>? gameToOpen, List<LeaderboardUser> topPlayers,
            List<Game> gamesInProgress, List<Game> recentGames, String? error)?
        user,
    TResult Function(List<LeaderboardUser> topPlayers, String? error)? noUser,
    TResult Function(String? error, List<LeaderboardUser> topPlayers)? requiresUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateUser value) user,
    required TResult Function(HomeStateNoUser value) noUser,
    required TResult Function(HomeStateRequiresUpdate value) requiresUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateUser value)? user,
    TResult? Function(HomeStateNoUser value)? noUser,
    TResult? Function(HomeStateRequiresUpdate value)? requiresUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateUser value)? user,
    TResult Function(HomeStateNoUser value)? noUser,
    TResult Function(HomeStateRequiresUpdate value)? requiresUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) = _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({List<LeaderboardUser> topPlayers, String? error});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topPlayers = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      topPlayers: null == topPlayers
          ? _value.topPlayers
          : topPlayers // ignore: cast_nullable_to_non_nullable
              as List<LeaderboardUser>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateUserImplCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateUserImplCopyWith(_$HomeStateUserImpl value, $Res Function(_$HomeStateUserImpl) then) =
      __$$HomeStateUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User user,
      DateTime datetime,
      ModelId<Game, String>? gameToOpen,
      List<LeaderboardUser> topPlayers,
      List<Game> gamesInProgress,
      List<Game> recentGames,
      String? error});
}

/// @nodoc
class __$$HomeStateUserImplCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res, _$HomeStateUserImpl>
    implements _$$HomeStateUserImplCopyWith<$Res> {
  __$$HomeStateUserImplCopyWithImpl(_$HomeStateUserImpl _value, $Res Function(_$HomeStateUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? datetime = null,
    Object? gameToOpen = freezed,
    Object? topPlayers = null,
    Object? gamesInProgress = null,
    Object? recentGames = null,
    Object? error = freezed,
  }) {
    return _then(_$HomeStateUserImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gameToOpen: freezed == gameToOpen
          ? _value.gameToOpen
          : gameToOpen // ignore: cast_nullable_to_non_nullable
              as ModelId<Game, String>?,
      topPlayers: null == topPlayers
          ? _value._topPlayers
          : topPlayers // ignore: cast_nullable_to_non_nullable
              as List<LeaderboardUser>,
      gamesInProgress: null == gamesInProgress
          ? _value._gamesInProgress
          : gamesInProgress // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      recentGames: null == recentGames
          ? _value._recentGames
          : recentGames // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HomeStateUserImpl implements HomeStateUser {
  const _$HomeStateUserImpl(
      {required this.user,
      required this.datetime,
      required this.gameToOpen,
      required final List<LeaderboardUser> topPlayers,
      final List<Game> gamesInProgress = const [],
      final List<Game> recentGames = const [],
      required this.error})
      : _topPlayers = topPlayers,
        _gamesInProgress = gamesInProgress,
        _recentGames = recentGames;

  @override
  final User user;
  @override
  final DateTime datetime;
  @override
  final ModelId<Game, String>? gameToOpen;
  final List<LeaderboardUser> _topPlayers;
  @override
  List<LeaderboardUser> get topPlayers {
    if (_topPlayers is EqualUnmodifiableListView) return _topPlayers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topPlayers);
  }

  final List<Game> _gamesInProgress;
  @override
  @JsonKey()
  List<Game> get gamesInProgress {
    if (_gamesInProgress is EqualUnmodifiableListView) return _gamesInProgress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gamesInProgress);
  }

  final List<Game> _recentGames;
  @override
  @JsonKey()
  List<Game> get recentGames {
    if (_recentGames is EqualUnmodifiableListView) return _recentGames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentGames);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'HomeState.user(user: $user, datetime: $datetime, gameToOpen: $gameToOpen, topPlayers: $topPlayers, gamesInProgress: $gamesInProgress, recentGames: $recentGames, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateUserImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.datetime, datetime) || other.datetime == datetime) &&
            (identical(other.gameToOpen, gameToOpen) || other.gameToOpen == gameToOpen) &&
            const DeepCollectionEquality().equals(other._topPlayers, _topPlayers) &&
            const DeepCollectionEquality().equals(other._gamesInProgress, _gamesInProgress) &&
            const DeepCollectionEquality().equals(other._recentGames, _recentGames) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      datetime,
      gameToOpen,
      const DeepCollectionEquality().hash(_topPlayers),
      const DeepCollectionEquality().hash(_gamesInProgress),
      const DeepCollectionEquality().hash(_recentGames),
      error);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateUserImplCopyWith<_$HomeStateUserImpl> get copyWith =>
      __$$HomeStateUserImplCopyWithImpl<_$HomeStateUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, DateTime datetime, ModelId<Game, String>? gameToOpen,
            List<LeaderboardUser> topPlayers, List<Game> gamesInProgress, List<Game> recentGames, String? error)
        user,
    required TResult Function(List<LeaderboardUser> topPlayers, String? error) noUser,
    required TResult Function(String? error, List<LeaderboardUser> topPlayers) requiresUpdate,
  }) {
    return user(this.user, datetime, gameToOpen, topPlayers, gamesInProgress, recentGames, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, DateTime datetime, ModelId<Game, String>? gameToOpen, List<LeaderboardUser> topPlayers,
            List<Game> gamesInProgress, List<Game> recentGames, String? error)?
        user,
    TResult? Function(List<LeaderboardUser> topPlayers, String? error)? noUser,
    TResult? Function(String? error, List<LeaderboardUser> topPlayers)? requiresUpdate,
  }) {
    return user?.call(this.user, datetime, gameToOpen, topPlayers, gamesInProgress, recentGames, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, DateTime datetime, ModelId<Game, String>? gameToOpen, List<LeaderboardUser> topPlayers,
            List<Game> gamesInProgress, List<Game> recentGames, String? error)?
        user,
    TResult Function(List<LeaderboardUser> topPlayers, String? error)? noUser,
    TResult Function(String? error, List<LeaderboardUser> topPlayers)? requiresUpdate,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this.user, datetime, gameToOpen, topPlayers, gamesInProgress, recentGames, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateUser value) user,
    required TResult Function(HomeStateNoUser value) noUser,
    required TResult Function(HomeStateRequiresUpdate value) requiresUpdate,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateUser value)? user,
    TResult? Function(HomeStateNoUser value)? noUser,
    TResult? Function(HomeStateRequiresUpdate value)? requiresUpdate,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateUser value)? user,
    TResult Function(HomeStateNoUser value)? noUser,
    TResult Function(HomeStateRequiresUpdate value)? requiresUpdate,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class HomeStateUser implements HomeState {
  const factory HomeStateUser(
      {required final User user,
      required final DateTime datetime,
      required final ModelId<Game, String>? gameToOpen,
      required final List<LeaderboardUser> topPlayers,
      final List<Game> gamesInProgress,
      final List<Game> recentGames,
      required final String? error}) = _$HomeStateUserImpl;

  User get user;
  DateTime get datetime;
  ModelId<Game, String>? get gameToOpen;
  @override
  List<LeaderboardUser> get topPlayers;
  List<Game> get gamesInProgress;
  List<Game> get recentGames;
  @override
  String? get error;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateUserImplCopyWith<_$HomeStateUserImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeStateNoUserImplCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateNoUserImplCopyWith(_$HomeStateNoUserImpl value, $Res Function(_$HomeStateNoUserImpl) then) =
      __$$HomeStateNoUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LeaderboardUser> topPlayers, String? error});
}

/// @nodoc
class __$$HomeStateNoUserImplCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res, _$HomeStateNoUserImpl>
    implements _$$HomeStateNoUserImplCopyWith<$Res> {
  __$$HomeStateNoUserImplCopyWithImpl(_$HomeStateNoUserImpl _value, $Res Function(_$HomeStateNoUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topPlayers = null,
    Object? error = freezed,
  }) {
    return _then(_$HomeStateNoUserImpl(
      topPlayers: null == topPlayers
          ? _value._topPlayers
          : topPlayers // ignore: cast_nullable_to_non_nullable
              as List<LeaderboardUser>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HomeStateNoUserImpl implements HomeStateNoUser {
  const _$HomeStateNoUserImpl({required final List<LeaderboardUser> topPlayers, required this.error})
      : _topPlayers = topPlayers;

  final List<LeaderboardUser> _topPlayers;
  @override
  List<LeaderboardUser> get topPlayers {
    if (_topPlayers is EqualUnmodifiableListView) return _topPlayers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topPlayers);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'HomeState.noUser(topPlayers: $topPlayers, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateNoUserImpl &&
            const DeepCollectionEquality().equals(other._topPlayers, _topPlayers) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_topPlayers), error);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateNoUserImplCopyWith<_$HomeStateNoUserImpl> get copyWith =>
      __$$HomeStateNoUserImplCopyWithImpl<_$HomeStateNoUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, DateTime datetime, ModelId<Game, String>? gameToOpen,
            List<LeaderboardUser> topPlayers, List<Game> gamesInProgress, List<Game> recentGames, String? error)
        user,
    required TResult Function(List<LeaderboardUser> topPlayers, String? error) noUser,
    required TResult Function(String? error, List<LeaderboardUser> topPlayers) requiresUpdate,
  }) {
    return noUser(topPlayers, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, DateTime datetime, ModelId<Game, String>? gameToOpen, List<LeaderboardUser> topPlayers,
            List<Game> gamesInProgress, List<Game> recentGames, String? error)?
        user,
    TResult? Function(List<LeaderboardUser> topPlayers, String? error)? noUser,
    TResult? Function(String? error, List<LeaderboardUser> topPlayers)? requiresUpdate,
  }) {
    return noUser?.call(topPlayers, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, DateTime datetime, ModelId<Game, String>? gameToOpen, List<LeaderboardUser> topPlayers,
            List<Game> gamesInProgress, List<Game> recentGames, String? error)?
        user,
    TResult Function(List<LeaderboardUser> topPlayers, String? error)? noUser,
    TResult Function(String? error, List<LeaderboardUser> topPlayers)? requiresUpdate,
    required TResult orElse(),
  }) {
    if (noUser != null) {
      return noUser(topPlayers, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateUser value) user,
    required TResult Function(HomeStateNoUser value) noUser,
    required TResult Function(HomeStateRequiresUpdate value) requiresUpdate,
  }) {
    return noUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateUser value)? user,
    TResult? Function(HomeStateNoUser value)? noUser,
    TResult? Function(HomeStateRequiresUpdate value)? requiresUpdate,
  }) {
    return noUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateUser value)? user,
    TResult Function(HomeStateNoUser value)? noUser,
    TResult Function(HomeStateRequiresUpdate value)? requiresUpdate,
    required TResult orElse(),
  }) {
    if (noUser != null) {
      return noUser(this);
    }
    return orElse();
  }
}

abstract class HomeStateNoUser implements HomeState {
  const factory HomeStateNoUser({required final List<LeaderboardUser> topPlayers, required final String? error}) =
      _$HomeStateNoUserImpl;

  @override
  List<LeaderboardUser> get topPlayers;
  @override
  String? get error;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateNoUserImplCopyWith<_$HomeStateNoUserImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeStateRequiresUpdateImplCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateRequiresUpdateImplCopyWith(
          _$HomeStateRequiresUpdateImpl value, $Res Function(_$HomeStateRequiresUpdateImpl) then) =
      __$$HomeStateRequiresUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, List<LeaderboardUser> topPlayers});
}

/// @nodoc
class __$$HomeStateRequiresUpdateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateRequiresUpdateImpl>
    implements _$$HomeStateRequiresUpdateImplCopyWith<$Res> {
  __$$HomeStateRequiresUpdateImplCopyWithImpl(
      _$HomeStateRequiresUpdateImpl _value, $Res Function(_$HomeStateRequiresUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? topPlayers = null,
  }) {
    return _then(_$HomeStateRequiresUpdateImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      topPlayers: null == topPlayers
          ? _value._topPlayers
          : topPlayers // ignore: cast_nullable_to_non_nullable
              as List<LeaderboardUser>,
    ));
  }
}

/// @nodoc

class _$HomeStateRequiresUpdateImpl implements HomeStateRequiresUpdate {
  const _$HomeStateRequiresUpdateImpl({required this.error, required final List<LeaderboardUser> topPlayers})
      : _topPlayers = topPlayers;

  @override
  final String? error;
  final List<LeaderboardUser> _topPlayers;
  @override
  List<LeaderboardUser> get topPlayers {
    if (_topPlayers is EqualUnmodifiableListView) return _topPlayers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topPlayers);
  }

  @override
  String toString() {
    return 'HomeState.requiresUpdate(error: $error, topPlayers: $topPlayers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateRequiresUpdateImpl &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._topPlayers, _topPlayers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, const DeepCollectionEquality().hash(_topPlayers));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateRequiresUpdateImplCopyWith<_$HomeStateRequiresUpdateImpl> get copyWith =>
      __$$HomeStateRequiresUpdateImplCopyWithImpl<_$HomeStateRequiresUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, DateTime datetime, ModelId<Game, String>? gameToOpen,
            List<LeaderboardUser> topPlayers, List<Game> gamesInProgress, List<Game> recentGames, String? error)
        user,
    required TResult Function(List<LeaderboardUser> topPlayers, String? error) noUser,
    required TResult Function(String? error, List<LeaderboardUser> topPlayers) requiresUpdate,
  }) {
    return requiresUpdate(error, topPlayers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, DateTime datetime, ModelId<Game, String>? gameToOpen, List<LeaderboardUser> topPlayers,
            List<Game> gamesInProgress, List<Game> recentGames, String? error)?
        user,
    TResult? Function(List<LeaderboardUser> topPlayers, String? error)? noUser,
    TResult? Function(String? error, List<LeaderboardUser> topPlayers)? requiresUpdate,
  }) {
    return requiresUpdate?.call(error, topPlayers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, DateTime datetime, ModelId<Game, String>? gameToOpen, List<LeaderboardUser> topPlayers,
            List<Game> gamesInProgress, List<Game> recentGames, String? error)?
        user,
    TResult Function(List<LeaderboardUser> topPlayers, String? error)? noUser,
    TResult Function(String? error, List<LeaderboardUser> topPlayers)? requiresUpdate,
    required TResult orElse(),
  }) {
    if (requiresUpdate != null) {
      return requiresUpdate(error, topPlayers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateUser value) user,
    required TResult Function(HomeStateNoUser value) noUser,
    required TResult Function(HomeStateRequiresUpdate value) requiresUpdate,
  }) {
    return requiresUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateUser value)? user,
    TResult? Function(HomeStateNoUser value)? noUser,
    TResult? Function(HomeStateRequiresUpdate value)? requiresUpdate,
  }) {
    return requiresUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateUser value)? user,
    TResult Function(HomeStateNoUser value)? noUser,
    TResult Function(HomeStateRequiresUpdate value)? requiresUpdate,
    required TResult orElse(),
  }) {
    if (requiresUpdate != null) {
      return requiresUpdate(this);
    }
    return orElse();
  }
}

abstract class HomeStateRequiresUpdate implements HomeState {
  const factory HomeStateRequiresUpdate(
      {required final String? error, required final List<LeaderboardUser> topPlayers}) = _$HomeStateRequiresUpdateImpl;

  @override
  String? get error;
  @override
  List<LeaderboardUser> get topPlayers;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateRequiresUpdateImplCopyWith<_$HomeStateRequiresUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
