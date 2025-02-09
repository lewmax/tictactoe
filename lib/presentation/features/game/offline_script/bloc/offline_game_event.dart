part of 'offline_game_bloc.dart';

@freezed
class OfflineGameEvent with _$OfflineGameEvent {
  const factory OfflineGameEvent.started({required int? difficultyLevel}) = _Started;
  const factory OfflineGameEvent.cellTapped(CellId cellId) = _CellTapped;
}
