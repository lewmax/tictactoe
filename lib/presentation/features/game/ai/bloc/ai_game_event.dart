part of 'ai_game_bloc.dart';

@freezed
class AiGameEvent with _$AiGameEvent {
  const factory AiGameEvent.started() = _Started;
  const factory AiGameEvent.cellTapped(CellId cellId) = _CellTapped;
}
