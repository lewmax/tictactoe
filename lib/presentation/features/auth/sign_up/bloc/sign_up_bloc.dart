import 'dart:io';

import 'package:chat_app/data/remote/network_response.dart';
import 'package:chat_app/domain/repositories/auth/auth_repo.dart';
import 'package:chat_app/presentation/common/validators/validators.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:useful_extensions/useful_extensions.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

@Injectable()
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AuthRepo authRepo;

  String _email = '';
  String _phone = '';
  String _fullName = '';
  String _password = '';
  // String _passwordRepeat = '';

  SignUpBloc(this.authRepo) : super(const SignUpState.initial(countryCode: '1', image: null)) {
    on<SignUpEvent>(
      (event, emit) => event.map(
        signUp: (event) => _signUp(event, emit),
        clearEmailError: (event) => _clearEmailError(event, emit),
        clearFullnameError: (event) => _clearFullnameError(event, emit),
        changeImage: (event) => _changeImage(event, emit),
        changePhoneNumber: (event) => _changePhoneNumber(event, emit),
        phoneCountryCode: (event) => _phoneCountryCode(event, emit),
        clearPassError: (event) => _clearPassError(event, emit),
        // clearPassRepeatError: (event) => _clearPassRepeatError(event, emit),
      ),
    );
  }

  Future<void> _signUp(_SignUp event, Emitter<SignUpState> emit) async {
    emit(SignUpState.loading(image: state.image, countryCode: state.countryCode));

    if (AppValidators.email(_email) != null) {
      return emit(
        SignUpState.initial(emailError: 'Invalid email', image: state.image, countryCode: state.countryCode),
      );
    }

    // if (AppValidators.phone(_phone) != null) {
    //   return emit(
    //     SignUpState.initial(phoneError: 'Invalid phone', image: state.image, countryCode: state.countryCode),
    //   );
    // }

    if (AppValidators.name(_fullName) != null) {
      return emit(
        SignUpState.initial(fullNameError: 'Invalid display name', image: state.image, countryCode: state.countryCode),
      );
    }

    if (AppValidators.password(_password) != null) {
      return emit(
        SignUpState.initial(passordError: 'Invalid password', image: state.image, countryCode: state.countryCode),
      );
    }

    // if (_password != _passwordRepeat) {
    //   return emit(
    //     SignUpState.initial(
    //       passordRepeatError: 'Passwords are not the same',
    //       image: state.image,
    //       countryCode: state.countryCode,
    //     ),
    //   );
    // }

    final resp = await authRepo.signUpWithEmail(
      email: _email,
      password: _password,
      name: _fullName,
      phone: '${state.countryCode}-$_phone',
      image: state.image?.path.let((xfile) => File(xfile)),
    );

    final newState = switch (resp) {
      SuccessNetworkResponse() => SignUpState.success(image: state.image, countryCode: state.countryCode),
      FailureNetworkResponse(:final failure) =>
        SignUpState.error(errorSnackbar: failure, image: state.image, countryCode: state.countryCode),
    };

    emit(newState);
  }

  void _clearEmailError(_ClearEmailError event, Emitter<SignUpState> emit) {
    _email = event.email;
    if (state.emailError != null) emit(state.copyWith(emailError: null));
  }

  void _changeImage(_ChangeImage event, Emitter<SignUpState> emit) {
    emit(state.copyWith(image: event.image));
  }

  void _changePhoneNumber(_ChangePhoneNumber event, Emitter<SignUpState> emit) {
    _phone = event.phone;
    if (state.phoneError != null) emit(state.copyWith(phoneError: null));
  }

  void _phoneCountryCode(_PhoneCountryCode event, Emitter<SignUpState> emit) {
    emit(state.copyWith(countryCode: event.countryCode));
  }

  void _clearPassError(_ClearPassError event, Emitter<SignUpState> emit) {
    _password = event.password;
    if (state.passordError != null) emit(state.copyWith(passordError: null));
  }

  // void _clearPassRepeatError(_ClearPassRepeatError event, Emitter<SignUpState> emit) {
  //   _passwordRepeat = event.password;
  //   if (state.passordRepeatError != null) emit(state.copyWith(passordRepeatError: null));
  // }

  void _clearFullnameError(_ClearFullnameError event, Emitter<SignUpState> emit) {
    _fullName = event.fullname;
    if (state.fullNameError != null) emit(state.copyWith(fullNameError: null));
  }
}
