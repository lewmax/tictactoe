part of 'sing_in_email_bloc.dart';

@freezed
class SingInEmailEvent with _$SingInEmailEvent {
  const factory SingInEmailEvent.signIn() = _SignIn;
  const factory SingInEmailEvent.clearEmailError(String email) = _ClearEmailError;
  const factory SingInEmailEvent.clearPassError(String password) = _ClearPassError;
}
