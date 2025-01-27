import 'package:chat_app/data/remote/network_response.dart';
import 'package:chat_app/domain/repositories/auth/auth_repo.dart';
import 'package:chat_app/presentation/common/validators/validators.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sing_in_email_bloc.freezed.dart';
part 'sing_in_email_event.dart';
part 'sing_in_email_state.dart';

@Injectable()
class SingInEmailBloc extends Bloc<SingInEmailEvent, SingInEmailState> {
  final AuthRepo authRepo;

  String _email = '';
  String _password = '';

  SingInEmailBloc(this.authRepo) : super(const SingInEmailState.initial()) {
    on<SingInEmailEvent>(
      (event, emit) => event.map(
        signIn: (event) => _signIn(event, emit),
        clearEmailError: (event) => _clearEmailError(event, emit),
        clearPassError: (event) => _clearPassError(event, emit),
      ),
    );
  }

  Future<void> _signIn(_SignIn event, Emitter<SingInEmailState> emit) async {
    emit(const SingInEmailState.loading());

    if (AppValidators.email(_email) != null) {
      return emit(const SingInEmailState.initial(emailError: 'Invalid email'));
    }

    if (AppValidators.password(_password) != null) {
      return emit(const SingInEmailState.initial(passordError: 'Invalid password'));
    }

    final resp = await authRepo.signInWithEmail(email: _email, password: _password);

    final state = switch (resp) {
      SuccessNetworkResponse() => const SingInEmailState.success(),
      FailureNetworkResponse(:final failure) => SingInEmailState.error(errorSnackbar: failure),
    };

    emit(state);
  }

  void _clearEmailError(_ClearEmailError event, Emitter<SingInEmailState> emit) {
    _email = event.email;
    if (state.emailError != null) emit(state.copyWith(emailError: null));
  }

  void _clearPassError(_ClearPassError event, Emitter<SingInEmailState> emit) {
    _password = event.password;
    if (state.passordError != null) emit(state.copyWith(passordError: null));
  }
}
