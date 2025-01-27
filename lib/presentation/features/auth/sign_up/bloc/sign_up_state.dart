part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial({
    required String countryCode,
    required XFile? image,
    String? emailError,
    String? fullNameError,
    String? passordError,
    // String? passordRepeatError,
    String? phoneError,
  }) = Initial;
  const factory SignUpState.loading({
    required String countryCode,
    required XFile? image,
    String? emailError,
    String? fullNameError,
    String? passordError,
    // String? passordRepeatError,
    String? phoneError,
  }) = Loading;
  const factory SignUpState.error({
    required String countryCode,
    required XFile? image,
    String? emailError,
    String? fullNameError,
    String? passordError,
    // String? passordRepeatError,
    String? phoneError,
    String? errorSnackbar,
  }) = Error;
  const factory SignUpState.success({
    required String countryCode,
    required XFile? image,
    String? emailError,
    String? fullNameError,
    String? passordError,
    // String? passordRepeatError,
    String? phoneError,
  }) = Success;
}
