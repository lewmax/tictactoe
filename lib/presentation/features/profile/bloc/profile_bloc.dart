import 'dart:io';

import 'package:chat_app/data/remote/network_response.dart';
import 'package:chat_app/domain/entities/auth/app_auth_state.dart';
import 'package:chat_app/domain/entities/user/user.dart';
import 'package:chat_app/domain/repositories/auth/auth_repo.dart';
import 'package:chat_app/presentation/common/validators/validators.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:useful_extensions/useful_extensions.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@Injectable()
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final AuthRepo authRepo;
  final _subscr = CompositeSubscription();

  ProfileBloc(this.authRepo)
      : super(
          authRepo.user.let(
            (user) => user == null
                ? const ProfileState.failure()
                : ProfileState.success(
                    name: user.name,
                    email: user.email,
                    phone: user.phone ?? '',
                    image: user.imageUrl?.let((imageUrl) => ImageFile.remote(imageUrl)),
                    loading: false,
                    isSuccess: false,
                    isUnauthenticated: false,
                  ),
          ),
        ) {
    _subscr.add(
      authRepo.authState.listen(
        (authState) => switch (authState) {
          Authenticated(:final user) => add(ProfileEvent.userUpdated(user)),
          UnAuthenticated() => add(const ProfileEvent.userUpdated(null)),
        },
      ),
    );
    on<ProfileEvent>(
      (event, emit) => event.map(
        userUpdated: (event) => _userUpdated(event, emit),
        editImage: (event) => _editImage(event, emit),
        editName: (event) => _editName(event, emit),
        save: (event) => _save(event, emit),
        logout: (event) => _logout(event, emit),
      ),
    );
  }

  bool get shouldSave {
    return state.mapOrNull(
          success: (state) =>
              state.name != authRepo.user?.name ||
              state.image is LocalImage ||
              (state.image == null && authRepo.user?.imageUrl != null),
        ) ??
        false;
  }

  @override
  Future<void> close() async {
    super.close();
    _subscr.dispose();
  }

  void _userUpdated(_UserUpdated event, Emitter<ProfileState> emit) {
    emit(
      event.user.let(
        (user) => user == null
            ? const ProfileState.failure()
            : ProfileState.success(
                name: user.name,
                email: user.email,
                phone: user.phone ?? '',
                image: user.imageUrl?.let((imageUrl) => ImageFile.remote(imageUrl)),
                loading: false,
                isSuccess: false,
                isUnauthenticated: false,
              ),
      ),
    );
  }

  void _editImage(_EditImage event, Emitter<ProfileState> emit) {
    state.mapOrNull(
      success: (state) {
        emit(state.copyWith(image: event.image));
      },
    );
  }

  void _editName(_EditName event, Emitter<ProfileState> emit) {
    state.mapOrNull(
      success: (state) {
        emit(state.copyWith(name: event.name, nameError: null));
      },
    );
  }

  Future<void> _save(_Save event, Emitter<ProfileState> emit) async {
    await state.mapOrNull(
      success: (state) async {
        if (AppValidators.name(state.name) != null) {
          return emit(
            state.copyWith(nameError: 'Invalid display name'),
          );
        }

        emit(state.copyWith(loading: true));
        final imageToEdit = state.image.let(
          (image) => image == null
              ? authRepo.user!.imageUrl == null
                  ? null
                  : () => null
              : image.mapOrNull(local: (im) => () => File(im.path)),
        );

        final response = await authRepo.updateUser(
          User(
            id: authRepo.user!.id,
            name: state.name,
            email: state.email,
            phone: state.phone,
            imageUrl: authRepo.user!.imageUrl,
          ),
          newImage: imageToEdit,
        );

        switch (response) {
          case SuccessNetworkResponse():
            emit(state.copyWith(loading: false, isSuccess: true));
          case FailureNetworkResponse(:final failure):
            emit(state.copyWith(loading: false, error: failure));
        }
      },
    );
  }

  Future<void> _logout(_Logout event, Emitter<ProfileState> emit) async {
    await state.mapOrNull(
      success: (state) async {
        await authRepo.signOut();
        emit(state.copyWith(isUnauthenticated: true));
      },
    );
  }
}
