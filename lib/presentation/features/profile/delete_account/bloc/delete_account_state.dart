part of 'delete_account_bloc.dart';

@freezed
class DeleteAccountState with _$DeleteAccountState {
  const factory DeleteAccountState.initial() = _Initial;
  const factory DeleteAccountState.loading() = _Loading;
  const factory DeleteAccountState.success() = _Success;
  const factory DeleteAccountState.error(String error) = _Error;
}
