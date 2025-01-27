// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sing_in_email_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SingInEmailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function(String email) clearEmailError,
    required TResult Function(String password) clearPassError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function(String email)? clearEmailError,
    TResult? Function(String password)? clearPassError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function(String email)? clearEmailError,
    TResult Function(String password)? clearPassError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_ClearEmailError value) clearEmailError,
    required TResult Function(_ClearPassError value) clearPassError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_ClearEmailError value)? clearEmailError,
    TResult? Function(_ClearPassError value)? clearPassError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_ClearEmailError value)? clearEmailError,
    TResult Function(_ClearPassError value)? clearPassError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingInEmailEventCopyWith<$Res> {
  factory $SingInEmailEventCopyWith(SingInEmailEvent value, $Res Function(SingInEmailEvent) then) =
      _$SingInEmailEventCopyWithImpl<$Res, SingInEmailEvent>;
}

/// @nodoc
class _$SingInEmailEventCopyWithImpl<$Res, $Val extends SingInEmailEvent> implements $SingInEmailEventCopyWith<$Res> {
  _$SingInEmailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingInEmailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignInImplCopyWith<$Res> {
  factory _$$SignInImplCopyWith(_$SignInImpl value, $Res Function(_$SignInImpl) then) =
      __$$SignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res> extends _$SingInEmailEventCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(_$SignInImpl _value, $Res Function(_$SignInImpl) _then) : super(_value, _then);

  /// Create a copy of SingInEmailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInImpl implements _SignIn {
  const _$SignInImpl();

  @override
  String toString() {
    return 'SingInEmailEvent.signIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$SignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function(String email) clearEmailError,
    required TResult Function(String password) clearPassError,
  }) {
    return signIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function(String email)? clearEmailError,
    TResult? Function(String password)? clearPassError,
  }) {
    return signIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function(String email)? clearEmailError,
    TResult Function(String password)? clearPassError,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_ClearEmailError value) clearEmailError,
    required TResult Function(_ClearPassError value) clearPassError,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_ClearEmailError value)? clearEmailError,
    TResult? Function(_ClearPassError value)? clearPassError,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_ClearEmailError value)? clearEmailError,
    TResult Function(_ClearPassError value)? clearPassError,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn implements SingInEmailEvent {
  const factory _SignIn() = _$SignInImpl;
}

/// @nodoc
abstract class _$$ClearEmailErrorImplCopyWith<$Res> {
  factory _$$ClearEmailErrorImplCopyWith(_$ClearEmailErrorImpl value, $Res Function(_$ClearEmailErrorImpl) then) =
      __$$ClearEmailErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ClearEmailErrorImplCopyWithImpl<$Res> extends _$SingInEmailEventCopyWithImpl<$Res, _$ClearEmailErrorImpl>
    implements _$$ClearEmailErrorImplCopyWith<$Res> {
  __$$ClearEmailErrorImplCopyWithImpl(_$ClearEmailErrorImpl _value, $Res Function(_$ClearEmailErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingInEmailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ClearEmailErrorImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClearEmailErrorImpl implements _ClearEmailError {
  const _$ClearEmailErrorImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SingInEmailEvent.clearEmailError(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearEmailErrorImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of SingInEmailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClearEmailErrorImplCopyWith<_$ClearEmailErrorImpl> get copyWith =>
      __$$ClearEmailErrorImplCopyWithImpl<_$ClearEmailErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function(String email) clearEmailError,
    required TResult Function(String password) clearPassError,
  }) {
    return clearEmailError(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function(String email)? clearEmailError,
    TResult? Function(String password)? clearPassError,
  }) {
    return clearEmailError?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function(String email)? clearEmailError,
    TResult Function(String password)? clearPassError,
    required TResult orElse(),
  }) {
    if (clearEmailError != null) {
      return clearEmailError(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_ClearEmailError value) clearEmailError,
    required TResult Function(_ClearPassError value) clearPassError,
  }) {
    return clearEmailError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_ClearEmailError value)? clearEmailError,
    TResult? Function(_ClearPassError value)? clearPassError,
  }) {
    return clearEmailError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_ClearEmailError value)? clearEmailError,
    TResult Function(_ClearPassError value)? clearPassError,
    required TResult orElse(),
  }) {
    if (clearEmailError != null) {
      return clearEmailError(this);
    }
    return orElse();
  }
}

abstract class _ClearEmailError implements SingInEmailEvent {
  const factory _ClearEmailError(final String email) = _$ClearEmailErrorImpl;

  String get email;

  /// Create a copy of SingInEmailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClearEmailErrorImplCopyWith<_$ClearEmailErrorImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearPassErrorImplCopyWith<$Res> {
  factory _$$ClearPassErrorImplCopyWith(_$ClearPassErrorImpl value, $Res Function(_$ClearPassErrorImpl) then) =
      __$$ClearPassErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$ClearPassErrorImplCopyWithImpl<$Res> extends _$SingInEmailEventCopyWithImpl<$Res, _$ClearPassErrorImpl>
    implements _$$ClearPassErrorImplCopyWith<$Res> {
  __$$ClearPassErrorImplCopyWithImpl(_$ClearPassErrorImpl _value, $Res Function(_$ClearPassErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingInEmailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$ClearPassErrorImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClearPassErrorImpl implements _ClearPassError {
  const _$ClearPassErrorImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SingInEmailEvent.clearPassError(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearPassErrorImpl &&
            (identical(other.password, password) || other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of SingInEmailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClearPassErrorImplCopyWith<_$ClearPassErrorImpl> get copyWith =>
      __$$ClearPassErrorImplCopyWithImpl<_$ClearPassErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function(String email) clearEmailError,
    required TResult Function(String password) clearPassError,
  }) {
    return clearPassError(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function(String email)? clearEmailError,
    TResult? Function(String password)? clearPassError,
  }) {
    return clearPassError?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function(String email)? clearEmailError,
    TResult Function(String password)? clearPassError,
    required TResult orElse(),
  }) {
    if (clearPassError != null) {
      return clearPassError(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_ClearEmailError value) clearEmailError,
    required TResult Function(_ClearPassError value) clearPassError,
  }) {
    return clearPassError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_ClearEmailError value)? clearEmailError,
    TResult? Function(_ClearPassError value)? clearPassError,
  }) {
    return clearPassError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_ClearEmailError value)? clearEmailError,
    TResult Function(_ClearPassError value)? clearPassError,
    required TResult orElse(),
  }) {
    if (clearPassError != null) {
      return clearPassError(this);
    }
    return orElse();
  }
}

abstract class _ClearPassError implements SingInEmailEvent {
  const factory _ClearPassError(final String password) = _$ClearPassErrorImpl;

  String get password;

  /// Create a copy of SingInEmailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClearPassErrorImplCopyWith<_$ClearPassErrorImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingInEmailState {
  String? get emailError => throw _privateConstructorUsedError;
  String? get passordError => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? emailError, String? passordError) initial,
    required TResult Function(String? emailError, String? passordError) loading,
    required TResult Function(String? emailError, String? passordError, String? errorSnackbar) error,
    required TResult Function(String? emailError, String? passordError) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? emailError, String? passordError)? initial,
    TResult? Function(String? emailError, String? passordError)? loading,
    TResult? Function(String? emailError, String? passordError, String? errorSnackbar)? error,
    TResult? Function(String? emailError, String? passordError)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? emailError, String? passordError)? initial,
    TResult Function(String? emailError, String? passordError)? loading,
    TResult Function(String? emailError, String? passordError, String? errorSnackbar)? error,
    TResult Function(String? emailError, String? passordError)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SingInEmailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SingInEmailStateCopyWith<SingInEmailState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingInEmailStateCopyWith<$Res> {
  factory $SingInEmailStateCopyWith(SingInEmailState value, $Res Function(SingInEmailState) then) =
      _$SingInEmailStateCopyWithImpl<$Res, SingInEmailState>;
  @useResult
  $Res call({String? emailError, String? passordError});
}

/// @nodoc
class _$SingInEmailStateCopyWithImpl<$Res, $Val extends SingInEmailState> implements $SingInEmailStateCopyWith<$Res> {
  _$SingInEmailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingInEmailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailError = freezed,
    Object? passordError = freezed,
  }) {
    return _then(_value.copyWith(
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      passordError: freezed == passordError
          ? _value.passordError
          : passordError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $SingInEmailStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? emailError, String? passordError});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$SingInEmailStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then) : super(_value, _then);

  /// Create a copy of SingInEmailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailError = freezed,
    Object? passordError = freezed,
  }) {
    return _then(_$InitialImpl(
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      passordError: freezed == passordError
          ? _value.passordError
          : passordError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({this.emailError, this.passordError});

  @override
  final String? emailError;
  @override
  final String? passordError;

  @override
  String toString() {
    return 'SingInEmailState.initial(emailError: $emailError, passordError: $passordError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.emailError, emailError) || other.emailError == emailError) &&
            (identical(other.passordError, passordError) || other.passordError == passordError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailError, passordError);

  /// Create a copy of SingInEmailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? emailError, String? passordError) initial,
    required TResult Function(String? emailError, String? passordError) loading,
    required TResult Function(String? emailError, String? passordError, String? errorSnackbar) error,
    required TResult Function(String? emailError, String? passordError) success,
  }) {
    return initial(emailError, passordError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? emailError, String? passordError)? initial,
    TResult? Function(String? emailError, String? passordError)? loading,
    TResult? Function(String? emailError, String? passordError, String? errorSnackbar)? error,
    TResult? Function(String? emailError, String? passordError)? success,
  }) {
    return initial?.call(emailError, passordError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? emailError, String? passordError)? initial,
    TResult Function(String? emailError, String? passordError)? loading,
    TResult Function(String? emailError, String? passordError, String? errorSnackbar)? error,
    TResult Function(String? emailError, String? passordError)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(emailError, passordError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SingInEmailState {
  const factory Initial({final String? emailError, final String? passordError}) = _$InitialImpl;

  @override
  String? get emailError;
  @override
  String? get passordError;

  /// Create a copy of SingInEmailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $SingInEmailStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? emailError, String? passordError});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$SingInEmailStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then) : super(_value, _then);

  /// Create a copy of SingInEmailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailError = freezed,
    Object? passordError = freezed,
  }) {
    return _then(_$LoadingImpl(
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      passordError: freezed == passordError
          ? _value.passordError
          : passordError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl({this.emailError, this.passordError});

  @override
  final String? emailError;
  @override
  final String? passordError;

  @override
  String toString() {
    return 'SingInEmailState.loading(emailError: $emailError, passordError: $passordError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.emailError, emailError) || other.emailError == emailError) &&
            (identical(other.passordError, passordError) || other.passordError == passordError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailError, passordError);

  /// Create a copy of SingInEmailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? emailError, String? passordError) initial,
    required TResult Function(String? emailError, String? passordError) loading,
    required TResult Function(String? emailError, String? passordError, String? errorSnackbar) error,
    required TResult Function(String? emailError, String? passordError) success,
  }) {
    return loading(emailError, passordError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? emailError, String? passordError)? initial,
    TResult? Function(String? emailError, String? passordError)? loading,
    TResult? Function(String? emailError, String? passordError, String? errorSnackbar)? error,
    TResult? Function(String? emailError, String? passordError)? success,
  }) {
    return loading?.call(emailError, passordError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? emailError, String? passordError)? initial,
    TResult Function(String? emailError, String? passordError)? loading,
    TResult Function(String? emailError, String? passordError, String? errorSnackbar)? error,
    TResult Function(String? emailError, String? passordError)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(emailError, passordError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SingInEmailState {
  const factory Loading({final String? emailError, final String? passordError}) = _$LoadingImpl;

  @override
  String? get emailError;
  @override
  String? get passordError;

  /// Create a copy of SingInEmailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $SingInEmailStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? emailError, String? passordError, String? errorSnackbar});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$SingInEmailStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then) : super(_value, _then);

  /// Create a copy of SingInEmailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailError = freezed,
    Object? passordError = freezed,
    Object? errorSnackbar = freezed,
  }) {
    return _then(_$ErrorImpl(
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      passordError: freezed == passordError
          ? _value.passordError
          : passordError // ignore: cast_nullable_to_non_nullable
              as String?,
      errorSnackbar: freezed == errorSnackbar
          ? _value.errorSnackbar
          : errorSnackbar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl({this.emailError, this.passordError, this.errorSnackbar});

  @override
  final String? emailError;
  @override
  final String? passordError;
  @override
  final String? errorSnackbar;

  @override
  String toString() {
    return 'SingInEmailState.error(emailError: $emailError, passordError: $passordError, errorSnackbar: $errorSnackbar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.emailError, emailError) || other.emailError == emailError) &&
            (identical(other.passordError, passordError) || other.passordError == passordError) &&
            (identical(other.errorSnackbar, errorSnackbar) || other.errorSnackbar == errorSnackbar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailError, passordError, errorSnackbar);

  /// Create a copy of SingInEmailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? emailError, String? passordError) initial,
    required TResult Function(String? emailError, String? passordError) loading,
    required TResult Function(String? emailError, String? passordError, String? errorSnackbar) error,
    required TResult Function(String? emailError, String? passordError) success,
  }) {
    return error(emailError, passordError, errorSnackbar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? emailError, String? passordError)? initial,
    TResult? Function(String? emailError, String? passordError)? loading,
    TResult? Function(String? emailError, String? passordError, String? errorSnackbar)? error,
    TResult? Function(String? emailError, String? passordError)? success,
  }) {
    return error?.call(emailError, passordError, errorSnackbar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? emailError, String? passordError)? initial,
    TResult Function(String? emailError, String? passordError)? loading,
    TResult Function(String? emailError, String? passordError, String? errorSnackbar)? error,
    TResult Function(String? emailError, String? passordError)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(emailError, passordError, errorSnackbar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements SingInEmailState {
  const factory Error({final String? emailError, final String? passordError, final String? errorSnackbar}) =
      _$ErrorImpl;

  @override
  String? get emailError;
  @override
  String? get passordError;
  String? get errorSnackbar;

  /// Create a copy of SingInEmailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> implements $SingInEmailStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(_$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? emailError, String? passordError});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res> extends _$SingInEmailStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(_$SuccessImpl _value, $Res Function(_$SuccessImpl) _then) : super(_value, _then);

  /// Create a copy of SingInEmailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailError = freezed,
    Object? passordError = freezed,
  }) {
    return _then(_$SuccessImpl(
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      passordError: freezed == passordError
          ? _value.passordError
          : passordError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl({this.emailError, this.passordError});

  @override
  final String? emailError;
  @override
  final String? passordError;

  @override
  String toString() {
    return 'SingInEmailState.success(emailError: $emailError, passordError: $passordError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.emailError, emailError) || other.emailError == emailError) &&
            (identical(other.passordError, passordError) || other.passordError == passordError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailError, passordError);

  /// Create a copy of SingInEmailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith => __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? emailError, String? passordError) initial,
    required TResult Function(String? emailError, String? passordError) loading,
    required TResult Function(String? emailError, String? passordError, String? errorSnackbar) error,
    required TResult Function(String? emailError, String? passordError) success,
  }) {
    return success(emailError, passordError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? emailError, String? passordError)? initial,
    TResult? Function(String? emailError, String? passordError)? loading,
    TResult? Function(String? emailError, String? passordError, String? errorSnackbar)? error,
    TResult? Function(String? emailError, String? passordError)? success,
  }) {
    return success?.call(emailError, passordError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? emailError, String? passordError)? initial,
    TResult Function(String? emailError, String? passordError)? loading,
    TResult Function(String? emailError, String? passordError, String? errorSnackbar)? error,
    TResult Function(String? emailError, String? passordError)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(emailError, passordError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements SingInEmailState {
  const factory Success({final String? emailError, final String? passordError}) = _$SuccessImpl;

  @override
  String? get emailError;
  @override
  String? get passordError;

  /// Create a copy of SingInEmailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith => throw _privateConstructorUsedError;
}
