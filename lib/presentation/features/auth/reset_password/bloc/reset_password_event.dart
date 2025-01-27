part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordEvent with _$ResetPasswordEvent {
  const factory ResetPasswordEvent.resetPassword() = _ResetPassword;
  const factory ResetPasswordEvent.clearEmailError(String email) = _ClearEmailError;
}
