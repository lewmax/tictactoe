import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:chat_app/data/remote/network_response.dart';
import 'package:chat_app/domain/repositories/auth/auth_repo.dart';

part 'sign_state.dart';
part 'sign_cubit.freezed.dart';

@Injectable()
class SignCubit extends Cubit<SignState> {
  final AuthRepo authRepo;

  SignCubit({required this.authRepo}) : super(const SignState.initial());

  Future<void> signInGoogle() async {
    emit(const SignState.loading());

    final response = await authRepo.signWithGoogle();
    if (isClosed) return;

    return switch (response) {
      SuccessNetworkResponse() => emit(response.success ? const SignState.success() : const SignState.initial()),
      FailureNetworkResponse(:final failure) => emit(SignState.failure(failure)),
    };
  }

  Future<void> signInApple() async {
    emit(const SignState.loading());

    final response = await authRepo.signWithApple();
    if (isClosed) return;

    return switch (response) {
      SuccessNetworkResponse() => emit(response.success ? const SignState.success() : const SignState.initial()),
      FailureNetworkResponse(:final failure) => emit(SignState.failure(failure)),
    };
  }
}
