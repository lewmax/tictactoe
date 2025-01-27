part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState.initial({String? emailError}) = Initial;
  const factory ResetPasswordState.loading({String? emailError}) = Loading;
  const factory ResetPasswordState.error({String? emailError, String? errorSnackbar}) = Error;
  const factory ResetPasswordState.success({String? emailError}) = Success;
}
