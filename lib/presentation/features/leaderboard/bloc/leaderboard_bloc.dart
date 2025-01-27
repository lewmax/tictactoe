import 'dart:async';

import 'package:chat_app/domain/dtos/game/get_leaderboard_period.dart';
import 'package:chat_app/domain/entities/leaderboard/leaderboard_user.dart';
import 'package:chat_app/domain/repositories/date/date_manager_repo.dart';
import 'package:chat_app/domain/repositories/leaderboard_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'leaderboard_bloc.freezed.dart';
part 'leaderboard_event.dart';
part 'leaderboard_state.dart';

@Injectable()
class LeaderboardBloc extends Bloc<LeaderboardEvent, LeaderboardState> {
  final LeaderboardRepo _leaderboardRepo;
  final DateManagerRepo _dateManagerRepo;

  final List<StreamSubscription> _subscr = [];

  LeaderboardBloc({required LeaderboardRepo leaderboardRepo, required DateManagerRepo dateManagerRepo})
      : _leaderboardRepo = leaderboardRepo,
        _dateManagerRepo = dateManagerRepo,
        super(LeaderboardState(datetime: dateManagerRepo.currDayStream.valueOrNull ?? DateTime.now())) {
    on<LeaderboardEvent>(
      (event, emit) => event.map(
        dateUpdated: (event) => _dateUpdated(event, emit),
        topUsersUpdated: (event) => _topUsersUpdated(event, emit),
      ),
    );

    _subscr.addAll([
      _dateManagerRepo.currDayStream.listen((dateTime) => add(LeaderboardEvent.dateUpdated(dateTime))),
      _leaderboardRepo
          .fetchLeaderboardUsersPer(GetLeaderboardPeriod.infinite)
          .listen((users) => add(LeaderboardEvent.topUsersUpdated(users))),
    ]);
  }

  @override
  Future<void> close() async {
    super.close();
    for (final element in _subscr) {
      await element.cancel();
    }
  }

  void _dateUpdated(_DateUpdated event, Emitter<LeaderboardState> emit) {
    emit(state.copyWith(datetime: event.dateTime));
  }

  void _topUsersUpdated(_TopUsersUpdated event, Emitter<LeaderboardState> emit) {
    emit(state.copyWith(topUsers: event.users));
  }
}
