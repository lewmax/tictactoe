import 'package:chat_app/data/remote/network_response.dart';
import 'package:chat_app/domain/repositories/auth/auth_repo.dart';
import 'package:chat_app/presentation/common/validators/validators.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'reset_password_bloc.freezed.dart';
part 'reset_password_event.dart';
part 'reset_password_state.dart';

@Injectable()
class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  final AuthRepo authRepo;

  String _email = '';

  ResetPasswordBloc(this.authRepo) : super(const ResetPasswordState.initial()) {
    on<ResetPasswordEvent>(
      (event, emit) => event.map(
        resetPassword: (event) => _resetPassword(event, emit),
        clearEmailError: (event) => _clearEmailError(event, emit),
      ),
    );
  }

  Future<void> _resetPassword(_ResetPassword event, Emitter<ResetPasswordState> emit) async {
    emit(const ResetPasswordState.loading());

    if (AppValidators.email(_email) != null) {
      return emit(const ResetPasswordState.initial(emailError: 'Invalid email'));
    }

    final resp = await authRepo.restorePassword(email: _email);

    final state = switch (resp) {
      SuccessNetworkResponse() => const ResetPasswordState.success(),
      FailureNetworkResponse(:final failure) => ResetPasswordState.error(errorSnackbar: failure),
    };

    emit(state);
  }

  void _clearEmailError(_ClearEmailError event, Emitter<ResetPasswordState> emit) {
    _email = event.email;
    if (state.emailError != null) emit(state.copyWith(emailError: null));
  }
}
