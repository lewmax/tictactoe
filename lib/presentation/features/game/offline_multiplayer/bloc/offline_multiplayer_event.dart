part of 'offline_multiplayer_bloc.dart';

@freezed
class OfflineMultiplayerEvent with _$OfflineMultiplayerEvent {
  const factory OfflineMultiplayerEvent.started() = _Started;
  const factory OfflineMultiplayerEvent.cellTapped(CellId cellId) = _CellTapped;
}
