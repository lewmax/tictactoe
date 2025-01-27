part of 'sign_cubit.dart';

@freezed
class SignState with _$SignState {
  const factory SignState.initial() = _Initial;
  const factory SignState.loading() = _Loading;
  const factory SignState.success() = _Success;
  const factory SignState.failure(String error) = _Failure;
}
