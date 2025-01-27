part of 'profile_bloc.dart';

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState.failure() = ProfileStateFailure;
  const factory ProfileState.success({
    required String name,
    String? nameError,
    required String email,
    required String phone,
    required ImageFile? image,
    required bool loading,
    String? error,
    required bool isSuccess,
    required bool isUnauthenticated,
  }) = ProfileStateSuccess;
}

@freezed
sealed class ImageFile with _$ImageFile {
  const factory ImageFile.remote(String url) = RemoteImage;
  const factory ImageFile.local(String path) = LocalImage;
}
