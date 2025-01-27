part of 'sign_up_bloc.dart';

@freezed
sealed class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.signUp() = _SignUp;
  const factory SignUpEvent.clearEmailError(String email) = _ClearEmailError;
  const factory SignUpEvent.clearFullnameError(String fullname) = _ClearFullnameError;
  const factory SignUpEvent.changeImage(XFile? image) = _ChangeImage;
  const factory SignUpEvent.changePhoneNumber(String phone) = _ChangePhoneNumber;
  const factory SignUpEvent.phoneCountryCode(String countryCode) = _PhoneCountryCode;
  const factory SignUpEvent.clearPassError(String password) = _ClearPassError;
  // const factory SignUpEvent.clearPassRepeatError(String password) = _ClearPassRepeatError;
}
