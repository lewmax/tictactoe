// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offline_multiplayer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OfflineMultiplayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CellId cellId) cellTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CellId cellId)? cellTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CellId cellId)? cellTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CellTapped value) cellTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CellTapped value)? cellTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CellTapped value)? cellTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflineMultiplayerEventCopyWith<$Res> {
  factory $OfflineMultiplayerEventCopyWith(OfflineMultiplayerEvent value, $Res Function(OfflineMultiplayerEvent) then) =
      _$OfflineMultiplayerEventCopyWithImpl<$Res, OfflineMultiplayerEvent>;
}

/// @nodoc
class _$OfflineMultiplayerEventCopyWithImpl<$Res, $Val extends OfflineMultiplayerEvent>
    implements $OfflineMultiplayerEventCopyWith<$Res> {
  _$OfflineMultiplayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfflineMultiplayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$OfflineMultiplayerEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then) : super(_value, _then);

  /// Create a copy of OfflineMultiplayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'OfflineMultiplayerEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CellId cellId) cellTapped,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CellId cellId)? cellTapped,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CellId cellId)? cellTapped,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CellTapped value) cellTapped,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CellTapped value)? cellTapped,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CellTapped value)? cellTapped,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OfflineMultiplayerEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CellTappedImplCopyWith<$Res> {
  factory _$$CellTappedImplCopyWith(_$CellTappedImpl value, $Res Function(_$CellTappedImpl) then) =
      __$$CellTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CellId cellId});
}

/// @nodoc
class __$$CellTappedImplCopyWithImpl<$Res> extends _$OfflineMultiplayerEventCopyWithImpl<$Res, _$CellTappedImpl>
    implements _$$CellTappedImplCopyWith<$Res> {
  __$$CellTappedImplCopyWithImpl(_$CellTappedImpl _value, $Res Function(_$CellTappedImpl) _then) : super(_value, _then);

  /// Create a copy of OfflineMultiplayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cellId = null,
  }) {
    return _then(_$CellTappedImpl(
      null == cellId
          ? _value.cellId
          : cellId // ignore: cast_nullable_to_non_nullable
              as CellId,
    ));
  }
}

/// @nodoc

class _$CellTappedImpl implements _CellTapped {
  const _$CellTappedImpl(this.cellId);

  @override
  final CellId cellId;

  @override
  String toString() {
    return 'OfflineMultiplayerEvent.cellTapped(cellId: $cellId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CellTappedImpl &&
            (identical(other.cellId, cellId) || other.cellId == cellId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cellId);

  /// Create a copy of OfflineMultiplayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CellTappedImplCopyWith<_$CellTappedImpl> get copyWith =>
      __$$CellTappedImplCopyWithImpl<_$CellTappedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CellId cellId) cellTapped,
  }) {
    return cellTapped(cellId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CellId cellId)? cellTapped,
  }) {
    return cellTapped?.call(cellId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CellId cellId)? cellTapped,
    required TResult orElse(),
  }) {
    if (cellTapped != null) {
      return cellTapped(cellId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CellTapped value) cellTapped,
  }) {
    return cellTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CellTapped value)? cellTapped,
  }) {
    return cellTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CellTapped value)? cellTapped,
    required TResult orElse(),
  }) {
    if (cellTapped != null) {
      return cellTapped(this);
    }
    return orElse();
  }
}

abstract class _CellTapped implements OfflineMultiplayerEvent {
  const factory _CellTapped(final CellId cellId) = _$CellTappedImpl;

  CellId get cellId;

  /// Create a copy of OfflineMultiplayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CellTappedImplCopyWith<_$CellTappedImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OfflineMultiplayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GameWarning? warning, Map<CellId, Cell?> board, GameUser myUser, GameUser opponentUser,
            bool isGameOver, CellState? winner, Result result)
        playing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(GameWarning? warning, Map<CellId, Cell?> board, GameUser myUser, GameUser opponentUser,
            bool isGameOver, CellState? winner, Result result)?
        playing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GameWarning? warning, Map<CellId, Cell?> board, GameUser myUser, GameUser opponentUser,
            bool isGameOver, CellState? winner, Result result)?
        playing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Playing value) playing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Playing value)? playing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Playing value)? playing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflineMultiplayerStateCopyWith<$Res> {
  factory $OfflineMultiplayerStateCopyWith(OfflineMultiplayerState value, $Res Function(OfflineMultiplayerState) then) =
      _$OfflineMultiplayerStateCopyWithImpl<$Res, OfflineMultiplayerState>;
}

/// @nodoc
class _$OfflineMultiplayerStateCopyWithImpl<$Res, $Val extends OfflineMultiplayerState>
    implements $OfflineMultiplayerStateCopyWith<$Res> {
  _$OfflineMultiplayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfflineMultiplayerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$OfflineMultiplayerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then) : super(_value, _then);

  /// Create a copy of OfflineMultiplayerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'OfflineMultiplayerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GameWarning? warning, Map<CellId, Cell?> board, GameUser myUser, GameUser opponentUser,
            bool isGameOver, CellState? winner, Result result)
        playing,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(GameWarning? warning, Map<CellId, Cell?> board, GameUser myUser, GameUser opponentUser,
            bool isGameOver, CellState? winner, Result result)?
        playing,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GameWarning? warning, Map<CellId, Cell?> board, GameUser myUser, GameUser opponentUser,
            bool isGameOver, CellState? winner, Result result)?
        playing,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Playing value) playing,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Playing value)? playing,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Playing value)? playing,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OfflineMultiplayerState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$PlayingImplCopyWith<$Res> {
  factory _$$PlayingImplCopyWith(_$PlayingImpl value, $Res Function(_$PlayingImpl) then) =
      __$$PlayingImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {GameWarning? warning,
      Map<CellId, Cell?> board,
      GameUser myUser,
      GameUser opponentUser,
      bool isGameOver,
      CellState? winner,
      Result result});
}

/// @nodoc
class __$$PlayingImplCopyWithImpl<$Res> extends _$OfflineMultiplayerStateCopyWithImpl<$Res, _$PlayingImpl>
    implements _$$PlayingImplCopyWith<$Res> {
  __$$PlayingImplCopyWithImpl(_$PlayingImpl _value, $Res Function(_$PlayingImpl) _then) : super(_value, _then);

  /// Create a copy of OfflineMultiplayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? warning = freezed,
    Object? board = null,
    Object? myUser = null,
    Object? opponentUser = null,
    Object? isGameOver = null,
    Object? winner = freezed,
    Object? result = null,
  }) {
    return _then(_$PlayingImpl(
      warning: freezed == warning
          ? _value.warning
          : warning // ignore: cast_nullable_to_non_nullable
              as GameWarning?,
      board: null == board
          ? _value._board
          : board // ignore: cast_nullable_to_non_nullable
              as Map<CellId, Cell?>,
      myUser: null == myUser
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as GameUser,
      opponentUser: null == opponentUser
          ? _value.opponentUser
          : opponentUser // ignore: cast_nullable_to_non_nullable
              as GameUser,
      isGameOver: null == isGameOver
          ? _value.isGameOver
          : isGameOver // ignore: cast_nullable_to_non_nullable
              as bool,
      winner: freezed == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as CellState?,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ));
  }
}

/// @nodoc

class _$PlayingImpl implements _Playing {
  const _$PlayingImpl(
      {this.warning,
      required final Map<CellId, Cell?> board,
      required this.myUser,
      required this.opponentUser,
      required this.isGameOver,
      required this.winner,
      required this.result})
      : _board = board;

  @override
  final GameWarning? warning;
  final Map<CellId, Cell?> _board;
  @override
  Map<CellId, Cell?> get board {
    if (_board is EqualUnmodifiableMapView) return _board;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_board);
  }

  @override
  final GameUser myUser;
  @override
  final GameUser opponentUser;
  @override
  final bool isGameOver;
  @override
  final CellState? winner;
  @override
  final Result result;

  @override
  String toString() {
    return 'OfflineMultiplayerState.playing(warning: $warning, board: $board, myUser: $myUser, opponentUser: $opponentUser, isGameOver: $isGameOver, winner: $winner, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayingImpl &&
            (identical(other.warning, warning) || other.warning == warning) &&
            const DeepCollectionEquality().equals(other._board, _board) &&
            (identical(other.myUser, myUser) || other.myUser == myUser) &&
            (identical(other.opponentUser, opponentUser) || other.opponentUser == opponentUser) &&
            (identical(other.isGameOver, isGameOver) || other.isGameOver == isGameOver) &&
            (identical(other.winner, winner) || other.winner == winner) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, warning, const DeepCollectionEquality().hash(_board), myUser,
      opponentUser, isGameOver, winner, result);

  /// Create a copy of OfflineMultiplayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayingImplCopyWith<_$PlayingImpl> get copyWith => __$$PlayingImplCopyWithImpl<_$PlayingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GameWarning? warning, Map<CellId, Cell?> board, GameUser myUser, GameUser opponentUser,
            bool isGameOver, CellState? winner, Result result)
        playing,
  }) {
    return playing(warning, board, myUser, opponentUser, isGameOver, winner, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(GameWarning? warning, Map<CellId, Cell?> board, GameUser myUser, GameUser opponentUser,
            bool isGameOver, CellState? winner, Result result)?
        playing,
  }) {
    return playing?.call(warning, board, myUser, opponentUser, isGameOver, winner, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GameWarning? warning, Map<CellId, Cell?> board, GameUser myUser, GameUser opponentUser,
            bool isGameOver, CellState? winner, Result result)?
        playing,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(warning, board, myUser, opponentUser, isGameOver, winner, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Playing value) playing,
  }) {
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Playing value)? playing,
  }) {
    return playing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Playing value)? playing,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }
}

abstract class _Playing implements OfflineMultiplayerState {
  const factory _Playing(
      {final GameWarning? warning,
      required final Map<CellId, Cell?> board,
      required final GameUser myUser,
      required final GameUser opponentUser,
      required final bool isGameOver,
      required final CellState? winner,
      required final Result result}) = _$PlayingImpl;

  GameWarning? get warning;
  Map<CellId, Cell?> get board;
  GameUser get myUser;
  GameUser get opponentUser;
  bool get isGameOver;
  CellState? get winner;
  Result get result;

  /// Create a copy of OfflineMultiplayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayingImplCopyWith<_$PlayingImpl> get copyWith => throw _privateConstructorUsedError;
}
