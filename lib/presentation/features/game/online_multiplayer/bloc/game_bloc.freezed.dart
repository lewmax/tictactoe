// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchGame,
    required TResult Function(Game game) gameUpdated,
    required TResult Function() terminateGame,
    required TResult Function(CellId cellId) makeMove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchGame,
    TResult? Function(Game game)? gameUpdated,
    TResult? Function()? terminateGame,
    TResult? Function(CellId cellId)? makeMove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchGame,
    TResult Function(Game game)? gameUpdated,
    TResult Function()? terminateGame,
    TResult Function(CellId cellId)? makeMove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchGame value) fetchGame,
    required TResult Function(_GameUpdated value) gameUpdated,
    required TResult Function(_TerminateGame value) terminateGame,
    required TResult Function(_MakeMove value) makeMove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchGame value)? fetchGame,
    TResult? Function(_GameUpdated value)? gameUpdated,
    TResult? Function(_TerminateGame value)? terminateGame,
    TResult? Function(_MakeMove value)? makeMove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchGame value)? fetchGame,
    TResult Function(_GameUpdated value)? gameUpdated,
    TResult Function(_TerminateGame value)? terminateGame,
    TResult Function(_MakeMove value)? makeMove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res, GameEvent>;
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res, $Val extends GameEvent>
    implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchGameImplCopyWith<$Res> {
  factory _$$FetchGameImplCopyWith(
          _$FetchGameImpl value, $Res Function(_$FetchGameImpl) then) =
      __$$FetchGameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchGameImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$FetchGameImpl>
    implements _$$FetchGameImplCopyWith<$Res> {
  __$$FetchGameImplCopyWithImpl(
      _$FetchGameImpl _value, $Res Function(_$FetchGameImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchGameImpl implements _FetchGame {
  const _$FetchGameImpl();

  @override
  String toString() {
    return 'GameEvent.fetchGame()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchGameImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchGame,
    required TResult Function(Game game) gameUpdated,
    required TResult Function() terminateGame,
    required TResult Function(CellId cellId) makeMove,
  }) {
    return fetchGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchGame,
    TResult? Function(Game game)? gameUpdated,
    TResult? Function()? terminateGame,
    TResult? Function(CellId cellId)? makeMove,
  }) {
    return fetchGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchGame,
    TResult Function(Game game)? gameUpdated,
    TResult Function()? terminateGame,
    TResult Function(CellId cellId)? makeMove,
    required TResult orElse(),
  }) {
    if (fetchGame != null) {
      return fetchGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchGame value) fetchGame,
    required TResult Function(_GameUpdated value) gameUpdated,
    required TResult Function(_TerminateGame value) terminateGame,
    required TResult Function(_MakeMove value) makeMove,
  }) {
    return fetchGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchGame value)? fetchGame,
    TResult? Function(_GameUpdated value)? gameUpdated,
    TResult? Function(_TerminateGame value)? terminateGame,
    TResult? Function(_MakeMove value)? makeMove,
  }) {
    return fetchGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchGame value)? fetchGame,
    TResult Function(_GameUpdated value)? gameUpdated,
    TResult Function(_TerminateGame value)? terminateGame,
    TResult Function(_MakeMove value)? makeMove,
    required TResult orElse(),
  }) {
    if (fetchGame != null) {
      return fetchGame(this);
    }
    return orElse();
  }
}

abstract class _FetchGame implements GameEvent {
  const factory _FetchGame() = _$FetchGameImpl;
}

/// @nodoc
abstract class _$$GameUpdatedImplCopyWith<$Res> {
  factory _$$GameUpdatedImplCopyWith(
          _$GameUpdatedImpl value, $Res Function(_$GameUpdatedImpl) then) =
      __$$GameUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Game game});
}

/// @nodoc
class __$$GameUpdatedImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$GameUpdatedImpl>
    implements _$$GameUpdatedImplCopyWith<$Res> {
  __$$GameUpdatedImplCopyWithImpl(
      _$GameUpdatedImpl _value, $Res Function(_$GameUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
  }) {
    return _then(_$GameUpdatedImpl(
      null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game,
    ));
  }
}

/// @nodoc

class _$GameUpdatedImpl implements _GameUpdated {
  const _$GameUpdatedImpl(this.game);

  @override
  final Game game;

  @override
  String toString() {
    return 'GameEvent.gameUpdated(game: $game)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameUpdatedImpl &&
            (identical(other.game, game) || other.game == game));
  }

  @override
  int get hashCode => Object.hash(runtimeType, game);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameUpdatedImplCopyWith<_$GameUpdatedImpl> get copyWith =>
      __$$GameUpdatedImplCopyWithImpl<_$GameUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchGame,
    required TResult Function(Game game) gameUpdated,
    required TResult Function() terminateGame,
    required TResult Function(CellId cellId) makeMove,
  }) {
    return gameUpdated(game);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchGame,
    TResult? Function(Game game)? gameUpdated,
    TResult? Function()? terminateGame,
    TResult? Function(CellId cellId)? makeMove,
  }) {
    return gameUpdated?.call(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchGame,
    TResult Function(Game game)? gameUpdated,
    TResult Function()? terminateGame,
    TResult Function(CellId cellId)? makeMove,
    required TResult orElse(),
  }) {
    if (gameUpdated != null) {
      return gameUpdated(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchGame value) fetchGame,
    required TResult Function(_GameUpdated value) gameUpdated,
    required TResult Function(_TerminateGame value) terminateGame,
    required TResult Function(_MakeMove value) makeMove,
  }) {
    return gameUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchGame value)? fetchGame,
    TResult? Function(_GameUpdated value)? gameUpdated,
    TResult? Function(_TerminateGame value)? terminateGame,
    TResult? Function(_MakeMove value)? makeMove,
  }) {
    return gameUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchGame value)? fetchGame,
    TResult Function(_GameUpdated value)? gameUpdated,
    TResult Function(_TerminateGame value)? terminateGame,
    TResult Function(_MakeMove value)? makeMove,
    required TResult orElse(),
  }) {
    if (gameUpdated != null) {
      return gameUpdated(this);
    }
    return orElse();
  }
}

abstract class _GameUpdated implements GameEvent {
  const factory _GameUpdated(final Game game) = _$GameUpdatedImpl;

  Game get game;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameUpdatedImplCopyWith<_$GameUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TerminateGameImplCopyWith<$Res> {
  factory _$$TerminateGameImplCopyWith(
          _$TerminateGameImpl value, $Res Function(_$TerminateGameImpl) then) =
      __$$TerminateGameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TerminateGameImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$TerminateGameImpl>
    implements _$$TerminateGameImplCopyWith<$Res> {
  __$$TerminateGameImplCopyWithImpl(
      _$TerminateGameImpl _value, $Res Function(_$TerminateGameImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TerminateGameImpl implements _TerminateGame {
  const _$TerminateGameImpl();

  @override
  String toString() {
    return 'GameEvent.terminateGame()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TerminateGameImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchGame,
    required TResult Function(Game game) gameUpdated,
    required TResult Function() terminateGame,
    required TResult Function(CellId cellId) makeMove,
  }) {
    return terminateGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchGame,
    TResult? Function(Game game)? gameUpdated,
    TResult? Function()? terminateGame,
    TResult? Function(CellId cellId)? makeMove,
  }) {
    return terminateGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchGame,
    TResult Function(Game game)? gameUpdated,
    TResult Function()? terminateGame,
    TResult Function(CellId cellId)? makeMove,
    required TResult orElse(),
  }) {
    if (terminateGame != null) {
      return terminateGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchGame value) fetchGame,
    required TResult Function(_GameUpdated value) gameUpdated,
    required TResult Function(_TerminateGame value) terminateGame,
    required TResult Function(_MakeMove value) makeMove,
  }) {
    return terminateGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchGame value)? fetchGame,
    TResult? Function(_GameUpdated value)? gameUpdated,
    TResult? Function(_TerminateGame value)? terminateGame,
    TResult? Function(_MakeMove value)? makeMove,
  }) {
    return terminateGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchGame value)? fetchGame,
    TResult Function(_GameUpdated value)? gameUpdated,
    TResult Function(_TerminateGame value)? terminateGame,
    TResult Function(_MakeMove value)? makeMove,
    required TResult orElse(),
  }) {
    if (terminateGame != null) {
      return terminateGame(this);
    }
    return orElse();
  }
}

abstract class _TerminateGame implements GameEvent {
  const factory _TerminateGame() = _$TerminateGameImpl;
}

/// @nodoc
abstract class _$$MakeMoveImplCopyWith<$Res> {
  factory _$$MakeMoveImplCopyWith(
          _$MakeMoveImpl value, $Res Function(_$MakeMoveImpl) then) =
      __$$MakeMoveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CellId cellId});
}

/// @nodoc
class __$$MakeMoveImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$MakeMoveImpl>
    implements _$$MakeMoveImplCopyWith<$Res> {
  __$$MakeMoveImplCopyWithImpl(
      _$MakeMoveImpl _value, $Res Function(_$MakeMoveImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cellId = null,
  }) {
    return _then(_$MakeMoveImpl(
      null == cellId
          ? _value.cellId
          : cellId // ignore: cast_nullable_to_non_nullable
              as CellId,
    ));
  }
}

/// @nodoc

class _$MakeMoveImpl implements _MakeMove {
  const _$MakeMoveImpl(this.cellId);

  @override
  final CellId cellId;

  @override
  String toString() {
    return 'GameEvent.makeMove(cellId: $cellId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakeMoveImpl &&
            (identical(other.cellId, cellId) || other.cellId == cellId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cellId);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MakeMoveImplCopyWith<_$MakeMoveImpl> get copyWith =>
      __$$MakeMoveImplCopyWithImpl<_$MakeMoveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchGame,
    required TResult Function(Game game) gameUpdated,
    required TResult Function() terminateGame,
    required TResult Function(CellId cellId) makeMove,
  }) {
    return makeMove(cellId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchGame,
    TResult? Function(Game game)? gameUpdated,
    TResult? Function()? terminateGame,
    TResult? Function(CellId cellId)? makeMove,
  }) {
    return makeMove?.call(cellId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchGame,
    TResult Function(Game game)? gameUpdated,
    TResult Function()? terminateGame,
    TResult Function(CellId cellId)? makeMove,
    required TResult orElse(),
  }) {
    if (makeMove != null) {
      return makeMove(cellId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchGame value) fetchGame,
    required TResult Function(_GameUpdated value) gameUpdated,
    required TResult Function(_TerminateGame value) terminateGame,
    required TResult Function(_MakeMove value) makeMove,
  }) {
    return makeMove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchGame value)? fetchGame,
    TResult? Function(_GameUpdated value)? gameUpdated,
    TResult? Function(_TerminateGame value)? terminateGame,
    TResult? Function(_MakeMove value)? makeMove,
  }) {
    return makeMove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchGame value)? fetchGame,
    TResult Function(_GameUpdated value)? gameUpdated,
    TResult Function(_TerminateGame value)? terminateGame,
    TResult Function(_MakeMove value)? makeMove,
    required TResult orElse(),
  }) {
    if (makeMove != null) {
      return makeMove(this);
    }
    return orElse();
  }
}

abstract class _MakeMove implements GameEvent {
  const factory _MakeMove(final CellId cellId) = _$MakeMoveImpl;

  CellId get cellId;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MakeMoveImplCopyWith<_$MakeMoveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameState {
  GameWarning? get gameWarning => throw _privateConstructorUsedError;
  GameError? get gameError => throw _privateConstructorUsedError;
  Map<CellId, Cell?> get board => throw _privateConstructorUsedError;
  GameUser get myUser => throw _privateConstructorUsedError;
  GameUser? get teammateUser => throw _privateConstructorUsedError;
  bool get showInviteDialog => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        initial,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        myTurn,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        opponentTurn,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        gameOver,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        gameDiscontinued,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        initial,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        myTurn,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        opponentTurn,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameOver,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameDiscontinued,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        initial,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        myTurn,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        opponentTurn,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameOver,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameDiscontinued,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateInitial value) initial,
    required TResult Function(GameStateMyTurn value) myTurn,
    required TResult Function(GameStateOpponentTurn value) opponentTurn,
    required TResult Function(GameStateGameOver value) gameOver,
    required TResult Function(GameStateGameDiscontinued value) gameDiscontinued,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateInitial value)? initial,
    TResult? Function(GameStateMyTurn value)? myTurn,
    TResult? Function(GameStateOpponentTurn value)? opponentTurn,
    TResult? Function(GameStateGameOver value)? gameOver,
    TResult? Function(GameStateGameDiscontinued value)? gameDiscontinued,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateInitial value)? initial,
    TResult Function(GameStateMyTurn value)? myTurn,
    TResult Function(GameStateOpponentTurn value)? opponentTurn,
    TResult Function(GameStateGameOver value)? gameOver,
    TResult Function(GameStateGameDiscontinued value)? gameDiscontinued,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
  @useResult
  $Res call(
      {GameWarning? gameWarning,
      GameError? gameError,
      Map<CellId, Cell?> board,
      GameUser myUser,
      GameUser? teammateUser,
      bool showInviteDialog});
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameWarning = freezed,
    Object? gameError = freezed,
    Object? board = null,
    Object? myUser = null,
    Object? teammateUser = freezed,
    Object? showInviteDialog = null,
  }) {
    return _then(_value.copyWith(
      gameWarning: freezed == gameWarning
          ? _value.gameWarning
          : gameWarning // ignore: cast_nullable_to_non_nullable
              as GameWarning?,
      gameError: freezed == gameError
          ? _value.gameError
          : gameError // ignore: cast_nullable_to_non_nullable
              as GameError?,
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as Map<CellId, Cell?>,
      myUser: null == myUser
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as GameUser,
      teammateUser: freezed == teammateUser
          ? _value.teammateUser
          : teammateUser // ignore: cast_nullable_to_non_nullable
              as GameUser?,
      showInviteDialog: null == showInviteDialog
          ? _value.showInviteDialog
          : showInviteDialog // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameStateInitialImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$GameStateInitialImplCopyWith(_$GameStateInitialImpl value,
          $Res Function(_$GameStateInitialImpl) then) =
      __$$GameStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GameWarning? gameWarning,
      GameError? gameError,
      Map<CellId, Cell?> board,
      GameUser myUser,
      GameUser? teammateUser,
      bool showInviteDialog});
}

/// @nodoc
class __$$GameStateInitialImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateInitialImpl>
    implements _$$GameStateInitialImplCopyWith<$Res> {
  __$$GameStateInitialImplCopyWithImpl(_$GameStateInitialImpl _value,
      $Res Function(_$GameStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameWarning = freezed,
    Object? gameError = freezed,
    Object? board = null,
    Object? myUser = null,
    Object? teammateUser = freezed,
    Object? showInviteDialog = null,
  }) {
    return _then(_$GameStateInitialImpl(
      gameWarning: freezed == gameWarning
          ? _value.gameWarning
          : gameWarning // ignore: cast_nullable_to_non_nullable
              as GameWarning?,
      gameError: freezed == gameError
          ? _value.gameError
          : gameError // ignore: cast_nullable_to_non_nullable
              as GameError?,
      board: null == board
          ? _value._board
          : board // ignore: cast_nullable_to_non_nullable
              as Map<CellId, Cell?>,
      myUser: null == myUser
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as GameUser,
      teammateUser: freezed == teammateUser
          ? _value.teammateUser
          : teammateUser // ignore: cast_nullable_to_non_nullable
              as GameUser?,
      showInviteDialog: null == showInviteDialog
          ? _value.showInviteDialog
          : showInviteDialog // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GameStateInitialImpl implements GameStateInitial {
  const _$GameStateInitialImpl(
      {this.gameWarning,
      this.gameError,
      required final Map<CellId, Cell?> board,
      required this.myUser,
      required this.teammateUser,
      required this.showInviteDialog})
      : _board = board;

  @override
  final GameWarning? gameWarning;
  @override
  final GameError? gameError;
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
  final GameUser? teammateUser;
  @override
  final bool showInviteDialog;

  @override
  String toString() {
    return 'GameState.initial(gameWarning: $gameWarning, gameError: $gameError, board: $board, myUser: $myUser, teammateUser: $teammateUser, showInviteDialog: $showInviteDialog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateInitialImpl &&
            (identical(other.gameWarning, gameWarning) ||
                other.gameWarning == gameWarning) &&
            (identical(other.gameError, gameError) ||
                other.gameError == gameError) &&
            const DeepCollectionEquality().equals(other._board, _board) &&
            (identical(other.myUser, myUser) || other.myUser == myUser) &&
            (identical(other.teammateUser, teammateUser) ||
                other.teammateUser == teammateUser) &&
            (identical(other.showInviteDialog, showInviteDialog) ||
                other.showInviteDialog == showInviteDialog));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      gameWarning,
      gameError,
      const DeepCollectionEquality().hash(_board),
      myUser,
      teammateUser,
      showInviteDialog);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateInitialImplCopyWith<_$GameStateInitialImpl> get copyWith =>
      __$$GameStateInitialImplCopyWithImpl<_$GameStateInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        initial,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        myTurn,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        opponentTurn,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        gameOver,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        gameDiscontinued,
  }) {
    return initial(
        gameWarning, gameError, board, myUser, teammateUser, showInviteDialog);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        initial,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        myTurn,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        opponentTurn,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameOver,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameDiscontinued,
  }) {
    return initial?.call(
        gameWarning, gameError, board, myUser, teammateUser, showInviteDialog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        initial,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        myTurn,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        opponentTurn,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameOver,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameDiscontinued,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(gameWarning, gameError, board, myUser, teammateUser,
          showInviteDialog);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateInitial value) initial,
    required TResult Function(GameStateMyTurn value) myTurn,
    required TResult Function(GameStateOpponentTurn value) opponentTurn,
    required TResult Function(GameStateGameOver value) gameOver,
    required TResult Function(GameStateGameDiscontinued value) gameDiscontinued,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateInitial value)? initial,
    TResult? Function(GameStateMyTurn value)? myTurn,
    TResult? Function(GameStateOpponentTurn value)? opponentTurn,
    TResult? Function(GameStateGameOver value)? gameOver,
    TResult? Function(GameStateGameDiscontinued value)? gameDiscontinued,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateInitial value)? initial,
    TResult Function(GameStateMyTurn value)? myTurn,
    TResult Function(GameStateOpponentTurn value)? opponentTurn,
    TResult Function(GameStateGameOver value)? gameOver,
    TResult Function(GameStateGameDiscontinued value)? gameDiscontinued,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GameStateInitial implements GameState {
  const factory GameStateInitial(
      {final GameWarning? gameWarning,
      final GameError? gameError,
      required final Map<CellId, Cell?> board,
      required final GameUser myUser,
      required final GameUser? teammateUser,
      required final bool showInviteDialog}) = _$GameStateInitialImpl;

  @override
  GameWarning? get gameWarning;
  @override
  GameError? get gameError;
  @override
  Map<CellId, Cell?> get board;
  @override
  GameUser get myUser;
  @override
  GameUser? get teammateUser;
  @override
  bool get showInviteDialog;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameStateInitialImplCopyWith<_$GameStateInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameStateMyTurnImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$GameStateMyTurnImplCopyWith(_$GameStateMyTurnImpl value,
          $Res Function(_$GameStateMyTurnImpl) then) =
      __$$GameStateMyTurnImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GameWarning? gameWarning,
      GameError? gameError,
      Map<CellId, Cell?> board,
      GameUser myUser,
      GameUser? teammateUser,
      bool showInviteDialog});
}

/// @nodoc
class __$$GameStateMyTurnImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateMyTurnImpl>
    implements _$$GameStateMyTurnImplCopyWith<$Res> {
  __$$GameStateMyTurnImplCopyWithImpl(
      _$GameStateMyTurnImpl _value, $Res Function(_$GameStateMyTurnImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameWarning = freezed,
    Object? gameError = freezed,
    Object? board = null,
    Object? myUser = null,
    Object? teammateUser = freezed,
    Object? showInviteDialog = null,
  }) {
    return _then(_$GameStateMyTurnImpl(
      gameWarning: freezed == gameWarning
          ? _value.gameWarning
          : gameWarning // ignore: cast_nullable_to_non_nullable
              as GameWarning?,
      gameError: freezed == gameError
          ? _value.gameError
          : gameError // ignore: cast_nullable_to_non_nullable
              as GameError?,
      board: null == board
          ? _value._board
          : board // ignore: cast_nullable_to_non_nullable
              as Map<CellId, Cell?>,
      myUser: null == myUser
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as GameUser,
      teammateUser: freezed == teammateUser
          ? _value.teammateUser
          : teammateUser // ignore: cast_nullable_to_non_nullable
              as GameUser?,
      showInviteDialog: null == showInviteDialog
          ? _value.showInviteDialog
          : showInviteDialog // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GameStateMyTurnImpl implements GameStateMyTurn {
  const _$GameStateMyTurnImpl(
      {this.gameWarning,
      this.gameError,
      required final Map<CellId, Cell?> board,
      required this.myUser,
      required this.teammateUser,
      required this.showInviteDialog})
      : _board = board;

  @override
  final GameWarning? gameWarning;
  @override
  final GameError? gameError;
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
  final GameUser? teammateUser;
  @override
  final bool showInviteDialog;

  @override
  String toString() {
    return 'GameState.myTurn(gameWarning: $gameWarning, gameError: $gameError, board: $board, myUser: $myUser, teammateUser: $teammateUser, showInviteDialog: $showInviteDialog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateMyTurnImpl &&
            (identical(other.gameWarning, gameWarning) ||
                other.gameWarning == gameWarning) &&
            (identical(other.gameError, gameError) ||
                other.gameError == gameError) &&
            const DeepCollectionEquality().equals(other._board, _board) &&
            (identical(other.myUser, myUser) || other.myUser == myUser) &&
            (identical(other.teammateUser, teammateUser) ||
                other.teammateUser == teammateUser) &&
            (identical(other.showInviteDialog, showInviteDialog) ||
                other.showInviteDialog == showInviteDialog));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      gameWarning,
      gameError,
      const DeepCollectionEquality().hash(_board),
      myUser,
      teammateUser,
      showInviteDialog);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateMyTurnImplCopyWith<_$GameStateMyTurnImpl> get copyWith =>
      __$$GameStateMyTurnImplCopyWithImpl<_$GameStateMyTurnImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        initial,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        myTurn,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        opponentTurn,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        gameOver,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        gameDiscontinued,
  }) {
    return myTurn(
        gameWarning, gameError, board, myUser, teammateUser, showInviteDialog);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        initial,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        myTurn,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        opponentTurn,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameOver,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameDiscontinued,
  }) {
    return myTurn?.call(
        gameWarning, gameError, board, myUser, teammateUser, showInviteDialog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        initial,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        myTurn,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        opponentTurn,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameOver,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameDiscontinued,
    required TResult orElse(),
  }) {
    if (myTurn != null) {
      return myTurn(gameWarning, gameError, board, myUser, teammateUser,
          showInviteDialog);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateInitial value) initial,
    required TResult Function(GameStateMyTurn value) myTurn,
    required TResult Function(GameStateOpponentTurn value) opponentTurn,
    required TResult Function(GameStateGameOver value) gameOver,
    required TResult Function(GameStateGameDiscontinued value) gameDiscontinued,
  }) {
    return myTurn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateInitial value)? initial,
    TResult? Function(GameStateMyTurn value)? myTurn,
    TResult? Function(GameStateOpponentTurn value)? opponentTurn,
    TResult? Function(GameStateGameOver value)? gameOver,
    TResult? Function(GameStateGameDiscontinued value)? gameDiscontinued,
  }) {
    return myTurn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateInitial value)? initial,
    TResult Function(GameStateMyTurn value)? myTurn,
    TResult Function(GameStateOpponentTurn value)? opponentTurn,
    TResult Function(GameStateGameOver value)? gameOver,
    TResult Function(GameStateGameDiscontinued value)? gameDiscontinued,
    required TResult orElse(),
  }) {
    if (myTurn != null) {
      return myTurn(this);
    }
    return orElse();
  }
}

abstract class GameStateMyTurn implements GameState {
  const factory GameStateMyTurn(
      {final GameWarning? gameWarning,
      final GameError? gameError,
      required final Map<CellId, Cell?> board,
      required final GameUser myUser,
      required final GameUser? teammateUser,
      required final bool showInviteDialog}) = _$GameStateMyTurnImpl;

  @override
  GameWarning? get gameWarning;
  @override
  GameError? get gameError;
  @override
  Map<CellId, Cell?> get board;
  @override
  GameUser get myUser;
  @override
  GameUser? get teammateUser;
  @override
  bool get showInviteDialog;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameStateMyTurnImplCopyWith<_$GameStateMyTurnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameStateOpponentTurnImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$GameStateOpponentTurnImplCopyWith(
          _$GameStateOpponentTurnImpl value,
          $Res Function(_$GameStateOpponentTurnImpl) then) =
      __$$GameStateOpponentTurnImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GameWarning? gameWarning,
      GameError? gameError,
      Map<CellId, Cell?> board,
      GameUser myUser,
      GameUser? teammateUser,
      bool showInviteDialog});
}

/// @nodoc
class __$$GameStateOpponentTurnImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateOpponentTurnImpl>
    implements _$$GameStateOpponentTurnImplCopyWith<$Res> {
  __$$GameStateOpponentTurnImplCopyWithImpl(_$GameStateOpponentTurnImpl _value,
      $Res Function(_$GameStateOpponentTurnImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameWarning = freezed,
    Object? gameError = freezed,
    Object? board = null,
    Object? myUser = null,
    Object? teammateUser = freezed,
    Object? showInviteDialog = null,
  }) {
    return _then(_$GameStateOpponentTurnImpl(
      gameWarning: freezed == gameWarning
          ? _value.gameWarning
          : gameWarning // ignore: cast_nullable_to_non_nullable
              as GameWarning?,
      gameError: freezed == gameError
          ? _value.gameError
          : gameError // ignore: cast_nullable_to_non_nullable
              as GameError?,
      board: null == board
          ? _value._board
          : board // ignore: cast_nullable_to_non_nullable
              as Map<CellId, Cell?>,
      myUser: null == myUser
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as GameUser,
      teammateUser: freezed == teammateUser
          ? _value.teammateUser
          : teammateUser // ignore: cast_nullable_to_non_nullable
              as GameUser?,
      showInviteDialog: null == showInviteDialog
          ? _value.showInviteDialog
          : showInviteDialog // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GameStateOpponentTurnImpl implements GameStateOpponentTurn {
  const _$GameStateOpponentTurnImpl(
      {this.gameWarning,
      this.gameError,
      required final Map<CellId, Cell?> board,
      required this.myUser,
      required this.teammateUser,
      required this.showInviteDialog})
      : _board = board;

  @override
  final GameWarning? gameWarning;
  @override
  final GameError? gameError;
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
  final GameUser? teammateUser;
  @override
  final bool showInviteDialog;

  @override
  String toString() {
    return 'GameState.opponentTurn(gameWarning: $gameWarning, gameError: $gameError, board: $board, myUser: $myUser, teammateUser: $teammateUser, showInviteDialog: $showInviteDialog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateOpponentTurnImpl &&
            (identical(other.gameWarning, gameWarning) ||
                other.gameWarning == gameWarning) &&
            (identical(other.gameError, gameError) ||
                other.gameError == gameError) &&
            const DeepCollectionEquality().equals(other._board, _board) &&
            (identical(other.myUser, myUser) || other.myUser == myUser) &&
            (identical(other.teammateUser, teammateUser) ||
                other.teammateUser == teammateUser) &&
            (identical(other.showInviteDialog, showInviteDialog) ||
                other.showInviteDialog == showInviteDialog));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      gameWarning,
      gameError,
      const DeepCollectionEquality().hash(_board),
      myUser,
      teammateUser,
      showInviteDialog);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateOpponentTurnImplCopyWith<_$GameStateOpponentTurnImpl>
      get copyWith => __$$GameStateOpponentTurnImplCopyWithImpl<
          _$GameStateOpponentTurnImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        initial,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        myTurn,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        opponentTurn,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        gameOver,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        gameDiscontinued,
  }) {
    return opponentTurn(
        gameWarning, gameError, board, myUser, teammateUser, showInviteDialog);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        initial,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        myTurn,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        opponentTurn,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameOver,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameDiscontinued,
  }) {
    return opponentTurn?.call(
        gameWarning, gameError, board, myUser, teammateUser, showInviteDialog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        initial,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        myTurn,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        opponentTurn,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameOver,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameDiscontinued,
    required TResult orElse(),
  }) {
    if (opponentTurn != null) {
      return opponentTurn(gameWarning, gameError, board, myUser, teammateUser,
          showInviteDialog);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateInitial value) initial,
    required TResult Function(GameStateMyTurn value) myTurn,
    required TResult Function(GameStateOpponentTurn value) opponentTurn,
    required TResult Function(GameStateGameOver value) gameOver,
    required TResult Function(GameStateGameDiscontinued value) gameDiscontinued,
  }) {
    return opponentTurn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateInitial value)? initial,
    TResult? Function(GameStateMyTurn value)? myTurn,
    TResult? Function(GameStateOpponentTurn value)? opponentTurn,
    TResult? Function(GameStateGameOver value)? gameOver,
    TResult? Function(GameStateGameDiscontinued value)? gameDiscontinued,
  }) {
    return opponentTurn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateInitial value)? initial,
    TResult Function(GameStateMyTurn value)? myTurn,
    TResult Function(GameStateOpponentTurn value)? opponentTurn,
    TResult Function(GameStateGameOver value)? gameOver,
    TResult Function(GameStateGameDiscontinued value)? gameDiscontinued,
    required TResult orElse(),
  }) {
    if (opponentTurn != null) {
      return opponentTurn(this);
    }
    return orElse();
  }
}

abstract class GameStateOpponentTurn implements GameState {
  const factory GameStateOpponentTurn(
      {final GameWarning? gameWarning,
      final GameError? gameError,
      required final Map<CellId, Cell?> board,
      required final GameUser myUser,
      required final GameUser? teammateUser,
      required final bool showInviteDialog}) = _$GameStateOpponentTurnImpl;

  @override
  GameWarning? get gameWarning;
  @override
  GameError? get gameError;
  @override
  Map<CellId, Cell?> get board;
  @override
  GameUser get myUser;
  @override
  GameUser? get teammateUser;
  @override
  bool get showInviteDialog;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameStateOpponentTurnImplCopyWith<_$GameStateOpponentTurnImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameStateGameOverImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$GameStateGameOverImplCopyWith(_$GameStateGameOverImpl value,
          $Res Function(_$GameStateGameOverImpl) then) =
      __$$GameStateGameOverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GameWarning? gameWarning,
      GameError? gameError,
      Map<CellId, Cell?> board,
      GameUser myUser,
      GameUser? teammateUser,
      bool showInviteDialog});
}

/// @nodoc
class __$$GameStateGameOverImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateGameOverImpl>
    implements _$$GameStateGameOverImplCopyWith<$Res> {
  __$$GameStateGameOverImplCopyWithImpl(_$GameStateGameOverImpl _value,
      $Res Function(_$GameStateGameOverImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameWarning = freezed,
    Object? gameError = freezed,
    Object? board = null,
    Object? myUser = null,
    Object? teammateUser = freezed,
    Object? showInviteDialog = null,
  }) {
    return _then(_$GameStateGameOverImpl(
      gameWarning: freezed == gameWarning
          ? _value.gameWarning
          : gameWarning // ignore: cast_nullable_to_non_nullable
              as GameWarning?,
      gameError: freezed == gameError
          ? _value.gameError
          : gameError // ignore: cast_nullable_to_non_nullable
              as GameError?,
      board: null == board
          ? _value._board
          : board // ignore: cast_nullable_to_non_nullable
              as Map<CellId, Cell?>,
      myUser: null == myUser
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as GameUser,
      teammateUser: freezed == teammateUser
          ? _value.teammateUser
          : teammateUser // ignore: cast_nullable_to_non_nullable
              as GameUser?,
      showInviteDialog: null == showInviteDialog
          ? _value.showInviteDialog
          : showInviteDialog // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GameStateGameOverImpl implements GameStateGameOver {
  const _$GameStateGameOverImpl(
      {this.gameWarning,
      this.gameError,
      required final Map<CellId, Cell?> board,
      required this.myUser,
      required this.teammateUser,
      required this.showInviteDialog})
      : _board = board;

  @override
  final GameWarning? gameWarning;
  @override
  final GameError? gameError;
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
  final GameUser? teammateUser;
  @override
  final bool showInviteDialog;

  @override
  String toString() {
    return 'GameState.gameOver(gameWarning: $gameWarning, gameError: $gameError, board: $board, myUser: $myUser, teammateUser: $teammateUser, showInviteDialog: $showInviteDialog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateGameOverImpl &&
            (identical(other.gameWarning, gameWarning) ||
                other.gameWarning == gameWarning) &&
            (identical(other.gameError, gameError) ||
                other.gameError == gameError) &&
            const DeepCollectionEquality().equals(other._board, _board) &&
            (identical(other.myUser, myUser) || other.myUser == myUser) &&
            (identical(other.teammateUser, teammateUser) ||
                other.teammateUser == teammateUser) &&
            (identical(other.showInviteDialog, showInviteDialog) ||
                other.showInviteDialog == showInviteDialog));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      gameWarning,
      gameError,
      const DeepCollectionEquality().hash(_board),
      myUser,
      teammateUser,
      showInviteDialog);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateGameOverImplCopyWith<_$GameStateGameOverImpl> get copyWith =>
      __$$GameStateGameOverImplCopyWithImpl<_$GameStateGameOverImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        initial,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        myTurn,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        opponentTurn,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        gameOver,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        gameDiscontinued,
  }) {
    return gameOver(
        gameWarning, gameError, board, myUser, teammateUser, showInviteDialog);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        initial,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        myTurn,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        opponentTurn,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameOver,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameDiscontinued,
  }) {
    return gameOver?.call(
        gameWarning, gameError, board, myUser, teammateUser, showInviteDialog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        initial,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        myTurn,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        opponentTurn,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameOver,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameDiscontinued,
    required TResult orElse(),
  }) {
    if (gameOver != null) {
      return gameOver(gameWarning, gameError, board, myUser, teammateUser,
          showInviteDialog);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateInitial value) initial,
    required TResult Function(GameStateMyTurn value) myTurn,
    required TResult Function(GameStateOpponentTurn value) opponentTurn,
    required TResult Function(GameStateGameOver value) gameOver,
    required TResult Function(GameStateGameDiscontinued value) gameDiscontinued,
  }) {
    return gameOver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateInitial value)? initial,
    TResult? Function(GameStateMyTurn value)? myTurn,
    TResult? Function(GameStateOpponentTurn value)? opponentTurn,
    TResult? Function(GameStateGameOver value)? gameOver,
    TResult? Function(GameStateGameDiscontinued value)? gameDiscontinued,
  }) {
    return gameOver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateInitial value)? initial,
    TResult Function(GameStateMyTurn value)? myTurn,
    TResult Function(GameStateOpponentTurn value)? opponentTurn,
    TResult Function(GameStateGameOver value)? gameOver,
    TResult Function(GameStateGameDiscontinued value)? gameDiscontinued,
    required TResult orElse(),
  }) {
    if (gameOver != null) {
      return gameOver(this);
    }
    return orElse();
  }
}

abstract class GameStateGameOver implements GameState {
  const factory GameStateGameOver(
      {final GameWarning? gameWarning,
      final GameError? gameError,
      required final Map<CellId, Cell?> board,
      required final GameUser myUser,
      required final GameUser? teammateUser,
      required final bool showInviteDialog}) = _$GameStateGameOverImpl;

  @override
  GameWarning? get gameWarning;
  @override
  GameError? get gameError;
  @override
  Map<CellId, Cell?> get board;
  @override
  GameUser get myUser;
  @override
  GameUser? get teammateUser;
  @override
  bool get showInviteDialog;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameStateGameOverImplCopyWith<_$GameStateGameOverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameStateGameDiscontinuedImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$GameStateGameDiscontinuedImplCopyWith(
          _$GameStateGameDiscontinuedImpl value,
          $Res Function(_$GameStateGameDiscontinuedImpl) then) =
      __$$GameStateGameDiscontinuedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GameWarning? gameWarning,
      GameError? gameError,
      Map<CellId, Cell?> board,
      GameUser myUser,
      GameUser? teammateUser,
      bool showInviteDialog});
}

/// @nodoc
class __$$GameStateGameDiscontinuedImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateGameDiscontinuedImpl>
    implements _$$GameStateGameDiscontinuedImplCopyWith<$Res> {
  __$$GameStateGameDiscontinuedImplCopyWithImpl(
      _$GameStateGameDiscontinuedImpl _value,
      $Res Function(_$GameStateGameDiscontinuedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameWarning = freezed,
    Object? gameError = freezed,
    Object? board = null,
    Object? myUser = null,
    Object? teammateUser = freezed,
    Object? showInviteDialog = null,
  }) {
    return _then(_$GameStateGameDiscontinuedImpl(
      gameWarning: freezed == gameWarning
          ? _value.gameWarning
          : gameWarning // ignore: cast_nullable_to_non_nullable
              as GameWarning?,
      gameError: freezed == gameError
          ? _value.gameError
          : gameError // ignore: cast_nullable_to_non_nullable
              as GameError?,
      board: null == board
          ? _value._board
          : board // ignore: cast_nullable_to_non_nullable
              as Map<CellId, Cell?>,
      myUser: null == myUser
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as GameUser,
      teammateUser: freezed == teammateUser
          ? _value.teammateUser
          : teammateUser // ignore: cast_nullable_to_non_nullable
              as GameUser?,
      showInviteDialog: null == showInviteDialog
          ? _value.showInviteDialog
          : showInviteDialog // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GameStateGameDiscontinuedImpl implements GameStateGameDiscontinued {
  const _$GameStateGameDiscontinuedImpl(
      {this.gameWarning,
      this.gameError,
      required final Map<CellId, Cell?> board,
      required this.myUser,
      required this.teammateUser,
      required this.showInviteDialog})
      : _board = board;

  @override
  final GameWarning? gameWarning;
  @override
  final GameError? gameError;
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
  final GameUser? teammateUser;
  @override
  final bool showInviteDialog;

  @override
  String toString() {
    return 'GameState.gameDiscontinued(gameWarning: $gameWarning, gameError: $gameError, board: $board, myUser: $myUser, teammateUser: $teammateUser, showInviteDialog: $showInviteDialog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateGameDiscontinuedImpl &&
            (identical(other.gameWarning, gameWarning) ||
                other.gameWarning == gameWarning) &&
            (identical(other.gameError, gameError) ||
                other.gameError == gameError) &&
            const DeepCollectionEquality().equals(other._board, _board) &&
            (identical(other.myUser, myUser) || other.myUser == myUser) &&
            (identical(other.teammateUser, teammateUser) ||
                other.teammateUser == teammateUser) &&
            (identical(other.showInviteDialog, showInviteDialog) ||
                other.showInviteDialog == showInviteDialog));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      gameWarning,
      gameError,
      const DeepCollectionEquality().hash(_board),
      myUser,
      teammateUser,
      showInviteDialog);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateGameDiscontinuedImplCopyWith<_$GameStateGameDiscontinuedImpl>
      get copyWith => __$$GameStateGameDiscontinuedImplCopyWithImpl<
          _$GameStateGameDiscontinuedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        initial,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        myTurn,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        opponentTurn,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        gameOver,
    required TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)
        gameDiscontinued,
  }) {
    return gameDiscontinued(
        gameWarning, gameError, board, myUser, teammateUser, showInviteDialog);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        initial,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        myTurn,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        opponentTurn,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameOver,
    TResult? Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameDiscontinued,
  }) {
    return gameDiscontinued?.call(
        gameWarning, gameError, board, myUser, teammateUser, showInviteDialog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        initial,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        myTurn,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        opponentTurn,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameOver,
    TResult Function(
            GameWarning? gameWarning,
            GameError? gameError,
            Map<CellId, Cell?> board,
            GameUser myUser,
            GameUser? teammateUser,
            bool showInviteDialog)?
        gameDiscontinued,
    required TResult orElse(),
  }) {
    if (gameDiscontinued != null) {
      return gameDiscontinued(gameWarning, gameError, board, myUser,
          teammateUser, showInviteDialog);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateInitial value) initial,
    required TResult Function(GameStateMyTurn value) myTurn,
    required TResult Function(GameStateOpponentTurn value) opponentTurn,
    required TResult Function(GameStateGameOver value) gameOver,
    required TResult Function(GameStateGameDiscontinued value) gameDiscontinued,
  }) {
    return gameDiscontinued(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateInitial value)? initial,
    TResult? Function(GameStateMyTurn value)? myTurn,
    TResult? Function(GameStateOpponentTurn value)? opponentTurn,
    TResult? Function(GameStateGameOver value)? gameOver,
    TResult? Function(GameStateGameDiscontinued value)? gameDiscontinued,
  }) {
    return gameDiscontinued?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateInitial value)? initial,
    TResult Function(GameStateMyTurn value)? myTurn,
    TResult Function(GameStateOpponentTurn value)? opponentTurn,
    TResult Function(GameStateGameOver value)? gameOver,
    TResult Function(GameStateGameDiscontinued value)? gameDiscontinued,
    required TResult orElse(),
  }) {
    if (gameDiscontinued != null) {
      return gameDiscontinued(this);
    }
    return orElse();
  }
}

abstract class GameStateGameDiscontinued implements GameState {
  const factory GameStateGameDiscontinued(
      {final GameWarning? gameWarning,
      final GameError? gameError,
      required final Map<CellId, Cell?> board,
      required final GameUser myUser,
      required final GameUser? teammateUser,
      required final bool showInviteDialog}) = _$GameStateGameDiscontinuedImpl;

  @override
  GameWarning? get gameWarning;
  @override
  GameError? get gameError;
  @override
  Map<CellId, Cell?> get board;
  @override
  GameUser get myUser;
  @override
  GameUser? get teammateUser;
  @override
  bool get showInviteDialog;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameStateGameDiscontinuedImplCopyWith<_$GameStateGameDiscontinuedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
