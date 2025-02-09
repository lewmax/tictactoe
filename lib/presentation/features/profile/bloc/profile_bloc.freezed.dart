// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) userUpdated,
    required TResult Function(String name) editName,
    required TResult Function(ImageFile? image) editImage,
    required TResult Function() save,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? userUpdated,
    TResult? Function(String name)? editName,
    TResult? Function(ImageFile? image)? editImage,
    TResult? Function()? save,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? userUpdated,
    TResult Function(String name)? editName,
    TResult Function(ImageFile? image)? editImage,
    TResult Function()? save,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserUpdated value) userUpdated,
    required TResult Function(_EditName value) editName,
    required TResult Function(_EditImage value) editImage,
    required TResult Function(_Save value) save,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserUpdated value)? userUpdated,
    TResult? Function(_EditName value)? editName,
    TResult? Function(_EditImage value)? editImage,
    TResult? Function(_Save value)? save,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserUpdated value)? userUpdated,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_Save value)? save,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEvent
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
class __$$UserUpdatedImplCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res, _$UserUpdatedImpl>
    implements _$$UserUpdatedImplCopyWith<$Res> {
  __$$UserUpdatedImplCopyWithImpl(_$UserUpdatedImpl _value, $Res Function(_$UserUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
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
    return 'ProfileEvent.userUpdated(user: $user)';
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

  /// Create a copy of ProfileEvent
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
    required TResult Function(String name) editName,
    required TResult Function(ImageFile? image) editImage,
    required TResult Function() save,
    required TResult Function() logout,
  }) {
    return userUpdated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? userUpdated,
    TResult? Function(String name)? editName,
    TResult? Function(ImageFile? image)? editImage,
    TResult? Function()? save,
    TResult? Function()? logout,
  }) {
    return userUpdated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? userUpdated,
    TResult Function(String name)? editName,
    TResult Function(ImageFile? image)? editImage,
    TResult Function()? save,
    TResult Function()? logout,
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
    required TResult Function(_EditName value) editName,
    required TResult Function(_EditImage value) editImage,
    required TResult Function(_Save value) save,
    required TResult Function(_Logout value) logout,
  }) {
    return userUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserUpdated value)? userUpdated,
    TResult? Function(_EditName value)? editName,
    TResult? Function(_EditImage value)? editImage,
    TResult? Function(_Save value)? save,
    TResult? Function(_Logout value)? logout,
  }) {
    return userUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserUpdated value)? userUpdated,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_Save value)? save,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (userUpdated != null) {
      return userUpdated(this);
    }
    return orElse();
  }
}

abstract class _UserUpdated implements ProfileEvent {
  const factory _UserUpdated(final User? user) = _$UserUpdatedImpl;

  User? get user;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserUpdatedImplCopyWith<_$UserUpdatedImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditNameImplCopyWith<$Res> {
  factory _$$EditNameImplCopyWith(_$EditNameImpl value, $Res Function(_$EditNameImpl) then) =
      __$$EditNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$EditNameImplCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res, _$EditNameImpl>
    implements _$$EditNameImplCopyWith<$Res> {
  __$$EditNameImplCopyWithImpl(_$EditNameImpl _value, $Res Function(_$EditNameImpl) _then) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$EditNameImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditNameImpl implements _EditName {
  const _$EditNameImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'ProfileEvent.editName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditNameImplCopyWith<_$EditNameImpl> get copyWith =>
      __$$EditNameImplCopyWithImpl<_$EditNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) userUpdated,
    required TResult Function(String name) editName,
    required TResult Function(ImageFile? image) editImage,
    required TResult Function() save,
    required TResult Function() logout,
  }) {
    return editName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? userUpdated,
    TResult? Function(String name)? editName,
    TResult? Function(ImageFile? image)? editImage,
    TResult? Function()? save,
    TResult? Function()? logout,
  }) {
    return editName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? userUpdated,
    TResult Function(String name)? editName,
    TResult Function(ImageFile? image)? editImage,
    TResult Function()? save,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (editName != null) {
      return editName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserUpdated value) userUpdated,
    required TResult Function(_EditName value) editName,
    required TResult Function(_EditImage value) editImage,
    required TResult Function(_Save value) save,
    required TResult Function(_Logout value) logout,
  }) {
    return editName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserUpdated value)? userUpdated,
    TResult? Function(_EditName value)? editName,
    TResult? Function(_EditImage value)? editImage,
    TResult? Function(_Save value)? save,
    TResult? Function(_Logout value)? logout,
  }) {
    return editName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserUpdated value)? userUpdated,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_Save value)? save,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (editName != null) {
      return editName(this);
    }
    return orElse();
  }
}

abstract class _EditName implements ProfileEvent {
  const factory _EditName(final String name) = _$EditNameImpl;

  String get name;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditNameImplCopyWith<_$EditNameImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditImageImplCopyWith<$Res> {
  factory _$$EditImageImplCopyWith(_$EditImageImpl value, $Res Function(_$EditImageImpl) then) =
      __$$EditImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageFile? image});

  $ImageFileCopyWith<$Res>? get image;
}

/// @nodoc
class __$$EditImageImplCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res, _$EditImageImpl>
    implements _$$EditImageImplCopyWith<$Res> {
  __$$EditImageImplCopyWithImpl(_$EditImageImpl _value, $Res Function(_$EditImageImpl) _then) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$EditImageImpl(
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageFile?,
    ));
  }

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageFileCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageFileCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value));
    });
  }
}

/// @nodoc

class _$EditImageImpl implements _EditImage {
  const _$EditImageImpl(this.image);

  @override
  final ImageFile? image;

  @override
  String toString() {
    return 'ProfileEvent.editImage(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditImageImplCopyWith<_$EditImageImpl> get copyWith =>
      __$$EditImageImplCopyWithImpl<_$EditImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) userUpdated,
    required TResult Function(String name) editName,
    required TResult Function(ImageFile? image) editImage,
    required TResult Function() save,
    required TResult Function() logout,
  }) {
    return editImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? userUpdated,
    TResult? Function(String name)? editName,
    TResult? Function(ImageFile? image)? editImage,
    TResult? Function()? save,
    TResult? Function()? logout,
  }) {
    return editImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? userUpdated,
    TResult Function(String name)? editName,
    TResult Function(ImageFile? image)? editImage,
    TResult Function()? save,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (editImage != null) {
      return editImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserUpdated value) userUpdated,
    required TResult Function(_EditName value) editName,
    required TResult Function(_EditImage value) editImage,
    required TResult Function(_Save value) save,
    required TResult Function(_Logout value) logout,
  }) {
    return editImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserUpdated value)? userUpdated,
    TResult? Function(_EditName value)? editName,
    TResult? Function(_EditImage value)? editImage,
    TResult? Function(_Save value)? save,
    TResult? Function(_Logout value)? logout,
  }) {
    return editImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserUpdated value)? userUpdated,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_Save value)? save,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (editImage != null) {
      return editImage(this);
    }
    return orElse();
  }
}

abstract class _EditImage implements ProfileEvent {
  const factory _EditImage(final ImageFile? image) = _$EditImageImpl;

  ImageFile? get image;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditImageImplCopyWith<_$EditImageImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveImplCopyWith<$Res> {
  factory _$$SaveImplCopyWith(_$SaveImpl value, $Res Function(_$SaveImpl) then) = __$$SaveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveImplCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res, _$SaveImpl>
    implements _$$SaveImplCopyWith<$Res> {
  __$$SaveImplCopyWithImpl(_$SaveImpl _value, $Res Function(_$SaveImpl) _then) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveImpl implements _Save {
  const _$SaveImpl();

  @override
  String toString() {
    return 'ProfileEvent.save()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$SaveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) userUpdated,
    required TResult Function(String name) editName,
    required TResult Function(ImageFile? image) editImage,
    required TResult Function() save,
    required TResult Function() logout,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? userUpdated,
    TResult? Function(String name)? editName,
    TResult? Function(ImageFile? image)? editImage,
    TResult? Function()? save,
    TResult? Function()? logout,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? userUpdated,
    TResult Function(String name)? editName,
    TResult Function(ImageFile? image)? editImage,
    TResult Function()? save,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserUpdated value) userUpdated,
    required TResult Function(_EditName value) editName,
    required TResult Function(_EditImage value) editImage,
    required TResult Function(_Save value) save,
    required TResult Function(_Logout value) logout,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserUpdated value)? userUpdated,
    TResult? Function(_EditName value)? editName,
    TResult? Function(_EditImage value)? editImage,
    TResult? Function(_Save value)? save,
    TResult? Function(_Logout value)? logout,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserUpdated value)? userUpdated,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_Save value)? save,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements ProfileEvent {
  const factory _Save() = _$SaveImpl;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(_$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(_$LogoutImpl _value, $Res Function(_$LogoutImpl) _then) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'ProfileEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) userUpdated,
    required TResult Function(String name) editName,
    required TResult Function(ImageFile? image) editImage,
    required TResult Function() save,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? userUpdated,
    TResult? Function(String name)? editName,
    TResult? Function(ImageFile? image)? editImage,
    TResult? Function()? save,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? userUpdated,
    TResult Function(String name)? editName,
    TResult Function(ImageFile? image)? editImage,
    TResult Function()? save,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserUpdated value) userUpdated,
    required TResult Function(_EditName value) editName,
    required TResult Function(_EditImage value) editImage,
    required TResult Function(_Save value) save,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserUpdated value)? userUpdated,
    TResult? Function(_EditName value)? editName,
    TResult? Function(_EditImage value)? editImage,
    TResult? Function(_Save value)? save,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserUpdated value)? userUpdated,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_Save value)? save,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements ProfileEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failure,
    required TResult Function(String name, String? nameError, String email, String phone, ImageFile? image,
            bool loading, String? error, bool isSuccess, bool isUnauthenticated)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? failure,
    TResult? Function(String name, String? nameError, String email, String phone, ImageFile? image, bool loading,
            String? error, bool isSuccess, bool isUnauthenticated)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failure,
    TResult Function(String name, String? nameError, String email, String phone, ImageFile? image, bool loading,
            String? error, bool isSuccess, bool isUnauthenticated)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateFailure value) failure,
    required TResult Function(ProfileStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateFailure value)? failure,
    TResult? Function(ProfileStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateFailure value)? failure,
    TResult Function(ProfileStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProfileStateFailureImplCopyWith<$Res> {
  factory _$$ProfileStateFailureImplCopyWith(
          _$ProfileStateFailureImpl value, $Res Function(_$ProfileStateFailureImpl) then) =
      __$$ProfileStateFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileStateFailureImplCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateFailureImpl>
    implements _$$ProfileStateFailureImplCopyWith<$Res> {
  __$$ProfileStateFailureImplCopyWithImpl(
      _$ProfileStateFailureImpl _value, $Res Function(_$ProfileStateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileStateFailureImpl implements ProfileStateFailure {
  const _$ProfileStateFailureImpl();

  @override
  String toString() {
    return 'ProfileState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ProfileStateFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failure,
    required TResult Function(String name, String? nameError, String email, String phone, ImageFile? image,
            bool loading, String? error, bool isSuccess, bool isUnauthenticated)
        success,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? failure,
    TResult? Function(String name, String? nameError, String email, String phone, ImageFile? image, bool loading,
            String? error, bool isSuccess, bool isUnauthenticated)?
        success,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failure,
    TResult Function(String name, String? nameError, String email, String phone, ImageFile? image, bool loading,
            String? error, bool isSuccess, bool isUnauthenticated)?
        success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateFailure value) failure,
    required TResult Function(ProfileStateSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateFailure value)? failure,
    TResult? Function(ProfileStateSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateFailure value)? failure,
    TResult Function(ProfileStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ProfileStateFailure implements ProfileState {
  const factory ProfileStateFailure() = _$ProfileStateFailureImpl;
}

/// @nodoc
abstract class _$$ProfileStateSuccessImplCopyWith<$Res> {
  factory _$$ProfileStateSuccessImplCopyWith(
          _$ProfileStateSuccessImpl value, $Res Function(_$ProfileStateSuccessImpl) then) =
      __$$ProfileStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String? nameError,
      String email,
      String phone,
      ImageFile? image,
      bool loading,
      String? error,
      bool isSuccess,
      bool isUnauthenticated});

  $ImageFileCopyWith<$Res>? get image;
}

/// @nodoc
class __$$ProfileStateSuccessImplCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateSuccessImpl>
    implements _$$ProfileStateSuccessImplCopyWith<$Res> {
  __$$ProfileStateSuccessImplCopyWithImpl(
      _$ProfileStateSuccessImpl _value, $Res Function(_$ProfileStateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? nameError = freezed,
    Object? email = null,
    Object? phone = null,
    Object? image = freezed,
    Object? loading = null,
    Object? error = freezed,
    Object? isSuccess = null,
    Object? isUnauthenticated = null,
  }) {
    return _then(_$ProfileStateSuccessImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameError: freezed == nameError
          ? _value.nameError
          : nameError // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageFile?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnauthenticated: null == isUnauthenticated
          ? _value.isUnauthenticated
          : isUnauthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageFileCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageFileCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value));
    });
  }
}

/// @nodoc

class _$ProfileStateSuccessImpl implements ProfileStateSuccess {
  const _$ProfileStateSuccessImpl(
      {required this.name,
      this.nameError,
      required this.email,
      required this.phone,
      required this.image,
      required this.loading,
      this.error,
      required this.isSuccess,
      required this.isUnauthenticated});

  @override
  final String name;
  @override
  final String? nameError;
  @override
  final String email;
  @override
  final String phone;
  @override
  final ImageFile? image;
  @override
  final bool loading;
  @override
  final String? error;
  @override
  final bool isSuccess;
  @override
  final bool isUnauthenticated;

  @override
  String toString() {
    return 'ProfileState.success(name: $name, nameError: $nameError, email: $email, phone: $phone, image: $image, loading: $loading, error: $error, isSuccess: $isSuccess, isUnauthenticated: $isUnauthenticated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateSuccessImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameError, nameError) || other.nameError == nameError) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess) &&
            (identical(other.isUnauthenticated, isUnauthenticated) || other.isUnauthenticated == isUnauthenticated));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, nameError, email, phone, image, loading, error, isSuccess, isUnauthenticated);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateSuccessImplCopyWith<_$ProfileStateSuccessImpl> get copyWith =>
      __$$ProfileStateSuccessImplCopyWithImpl<_$ProfileStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failure,
    required TResult Function(String name, String? nameError, String email, String phone, ImageFile? image,
            bool loading, String? error, bool isSuccess, bool isUnauthenticated)
        success,
  }) {
    return success(name, nameError, email, phone, image, loading, error, isSuccess, isUnauthenticated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? failure,
    TResult? Function(String name, String? nameError, String email, String phone, ImageFile? image, bool loading,
            String? error, bool isSuccess, bool isUnauthenticated)?
        success,
  }) {
    return success?.call(name, nameError, email, phone, image, loading, error, isSuccess, isUnauthenticated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failure,
    TResult Function(String name, String? nameError, String email, String phone, ImageFile? image, bool loading,
            String? error, bool isSuccess, bool isUnauthenticated)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(name, nameError, email, phone, image, loading, error, isSuccess, isUnauthenticated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateFailure value) failure,
    required TResult Function(ProfileStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateFailure value)? failure,
    TResult? Function(ProfileStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateFailure value)? failure,
    TResult Function(ProfileStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ProfileStateSuccess implements ProfileState {
  const factory ProfileStateSuccess(
      {required final String name,
      final String? nameError,
      required final String email,
      required final String phone,
      required final ImageFile? image,
      required final bool loading,
      final String? error,
      required final bool isSuccess,
      required final bool isUnauthenticated}) = _$ProfileStateSuccessImpl;

  String get name;
  String? get nameError;
  String get email;
  String get phone;
  ImageFile? get image;
  bool get loading;
  String? get error;
  bool get isSuccess;
  bool get isUnauthenticated;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileStateSuccessImplCopyWith<_$ProfileStateSuccessImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImageFile {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) remote,
    required TResult Function(String path) local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? remote,
    TResult? Function(String path)? local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? remote,
    TResult Function(String path)? local,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteImage value) remote,
    required TResult Function(LocalImage value) local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteImage value)? remote,
    TResult? Function(LocalImage value)? local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteImage value)? remote,
    TResult Function(LocalImage value)? local,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageFileCopyWith<$Res> {
  factory $ImageFileCopyWith(ImageFile value, $Res Function(ImageFile) then) = _$ImageFileCopyWithImpl<$Res, ImageFile>;
}

/// @nodoc
class _$ImageFileCopyWithImpl<$Res, $Val extends ImageFile> implements $ImageFileCopyWith<$Res> {
  _$ImageFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageFile
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RemoteImageImplCopyWith<$Res> {
  factory _$$RemoteImageImplCopyWith(_$RemoteImageImpl value, $Res Function(_$RemoteImageImpl) then) =
      __$$RemoteImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$RemoteImageImplCopyWithImpl<$Res> extends _$ImageFileCopyWithImpl<$Res, _$RemoteImageImpl>
    implements _$$RemoteImageImplCopyWith<$Res> {
  __$$RemoteImageImplCopyWithImpl(_$RemoteImageImpl _value, $Res Function(_$RemoteImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$RemoteImageImpl(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoteImageImpl implements RemoteImage {
  const _$RemoteImageImpl(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'ImageFile.remote(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteImageImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of ImageFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteImageImplCopyWith<_$RemoteImageImpl> get copyWith =>
      __$$RemoteImageImplCopyWithImpl<_$RemoteImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) remote,
    required TResult Function(String path) local,
  }) {
    return remote(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? remote,
    TResult? Function(String path)? local,
  }) {
    return remote?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? remote,
    TResult Function(String path)? local,
    required TResult orElse(),
  }) {
    if (remote != null) {
      return remote(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteImage value) remote,
    required TResult Function(LocalImage value) local,
  }) {
    return remote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteImage value)? remote,
    TResult? Function(LocalImage value)? local,
  }) {
    return remote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteImage value)? remote,
    TResult Function(LocalImage value)? local,
    required TResult orElse(),
  }) {
    if (remote != null) {
      return remote(this);
    }
    return orElse();
  }
}

abstract class RemoteImage implements ImageFile {
  const factory RemoteImage(final String url) = _$RemoteImageImpl;

  String get url;

  /// Create a copy of ImageFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoteImageImplCopyWith<_$RemoteImageImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalImageImplCopyWith<$Res> {
  factory _$$LocalImageImplCopyWith(_$LocalImageImpl value, $Res Function(_$LocalImageImpl) then) =
      __$$LocalImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$LocalImageImplCopyWithImpl<$Res> extends _$ImageFileCopyWithImpl<$Res, _$LocalImageImpl>
    implements _$$LocalImageImplCopyWith<$Res> {
  __$$LocalImageImplCopyWithImpl(_$LocalImageImpl _value, $Res Function(_$LocalImageImpl) _then) : super(_value, _then);

  /// Create a copy of ImageFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$LocalImageImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocalImageImpl implements LocalImage {
  const _$LocalImageImpl(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'ImageFile.local(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalImageImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  /// Create a copy of ImageFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalImageImplCopyWith<_$LocalImageImpl> get copyWith =>
      __$$LocalImageImplCopyWithImpl<_$LocalImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) remote,
    required TResult Function(String path) local,
  }) {
    return local(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? remote,
    TResult? Function(String path)? local,
  }) {
    return local?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? remote,
    TResult Function(String path)? local,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteImage value) remote,
    required TResult Function(LocalImage value) local,
  }) {
    return local(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteImage value)? remote,
    TResult? Function(LocalImage value)? local,
  }) {
    return local?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteImage value)? remote,
    TResult Function(LocalImage value)? local,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(this);
    }
    return orElse();
  }
}

abstract class LocalImage implements ImageFile {
  const factory LocalImage(final String path) = _$LocalImageImpl;

  String get path;

  /// Create a copy of ImageFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalImageImplCopyWith<_$LocalImageImpl> get copyWith => throw _privateConstructorUsedError;
}
