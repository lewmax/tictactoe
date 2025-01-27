import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:chat_app/data/remote/network_response.dart';
import 'package:chat_app/data/repositories/auth/auth_repo_impl.dart';
import 'package:chat_app/domain/repositories/auth/auth_repo.dart';
import 'package:chat_app/presentation/common/validators/validators.dart';

part 'delete_account_event.dart';
part 'delete_account_state.dart';
part 'delete_account_bloc.freezed.dart';

@Injectable()
class DeleteAccountBloc extends Bloc<DeleteAccountEvent, DeleteAccountState> {
  final AuthRepo authRepo;

  DeleteAccountBloc(this.authRepo) : super(const DeleteAccountState.initial()) {
    on<DeleteAccountEvent>((event, emit) => event.map(deleteAccount: (_) => _deleteAccount(event, emit)));
  }

  Future<void> _deleteAccount(DeleteAccountEvent event, Emitter<DeleteAccountState> emit) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;

    if (!user.isSocialLogin && AppValidators.password(event.password) != null) {
      return emit(const DeleteAccountState.error('Invalid password'));
    }

    emit(const DeleteAccountState.loading());
    final res = await authRepo.deleteUserAccount(event.password);

    switch (res) {
      case SuccessNetworkResponse():
        emit(const DeleteAccountState.success());
      case FailureNetworkResponse():
        emit(DeleteAccountState.error(res.failure));
    }
  }
}
