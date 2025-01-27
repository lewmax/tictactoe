part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.userUpdated(User? user) = _UserUpdated;
  const factory ProfileEvent.editName(String name) = _EditName;
  const factory ProfileEvent.editImage(ImageFile? image) = _EditImage;
  const factory ProfileEvent.save() = _Save;
  const factory ProfileEvent.logout() = _Logout;
}
