part of 'sing_in_email_bloc.dart';

@freezed
class SingInEmailState with _$SingInEmailState {
  const factory SingInEmailState.initial({String? emailError, String? passordError}) = Initial;
  const factory SingInEmailState.loading({String? emailError, String? passordError}) = Loading;
  const factory SingInEmailState.error({String? emailError, String? passordError, String? errorSnackbar}) = Error;
  const factory SingInEmailState.success({String? emailError, String? passordError}) = Success;
}
