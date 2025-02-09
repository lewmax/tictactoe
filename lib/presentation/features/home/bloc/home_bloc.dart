import 'dart:async';

import 'package:chat_app/domain/common/model_id.dart';
import 'package:chat_app/domain/dtos/game/get_leaderboard_period.dart';
import 'package:chat_app/domain/entities/auth/app_auth_state.dart';
import 'package:chat_app/domain/entities/game/game.dart';
import 'package:chat_app/domain/entities/leaderboard/leaderboard_user.dart';
import 'package:chat_app/domain/entities/referal/deep_link.dart';
import 'package:chat_app/domain/entities/user/user.dart';
import 'package:chat_app/domain/models/app/config_keys.dart';
import 'package:chat_app/domain/repositories/app/remote_config_repo.dart';
import 'package:chat_app/domain/repositories/auth/auth_repo.dart';
import 'package:chat_app/domain/repositories/date/date_manager_repo.dart';
import 'package:chat_app/domain/repositories/force_update/force_update_repo.dart';
import 'package:chat_app/domain/repositories/game/game_repo.dart';
import 'package:chat_app/domain/repositories/leaderboard/leaderboard_repo.dart';
import 'package:chat_app/domain/repositories/referal/referal_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@Injectable()
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final AuthRepo _authRepo;
  final GameRepo _gameRepo;
  final ReferalRepo _referalRepo;
  final RemoteConfigRepo _remoteConfigRepo;
  final ForceUpdateRepo _forceUpdateRepo;
  final List<StreamSubscription> _subscrToGames = [];
  final List<StreamSubscription> _generalSubscr = [];
  final DateManagerRepo _dateManagerRepo;
  final LeaderboardRepo _leaderboardRepo;

  // bool get allowRedirectFromHome =>
  //     _gameRepo.activeGameIdStream.valueOrNull == null && _matchingRepo.isLobbyActive.valueOrNull != true;

  HomeBloc({
    required AuthRepo authRepo,
    required GameRepo gameRepo,
    required ReferalRepo referalRepo,
    required RemoteConfigRepo remoteConfigRepo,
    required ForceUpdateRepo forceUpdateRepo,
    required DateManagerRepo dateManagerRepo,
    required LeaderboardRepo leaderboardRepo,
  })  : _authRepo = authRepo,
        _gameRepo = gameRepo,
        _referalRepo = referalRepo,
        _remoteConfigRepo = remoteConfigRepo,
        _forceUpdateRepo = forceUpdateRepo,
        _dateManagerRepo = dateManagerRepo,
        _leaderboardRepo = leaderboardRepo,
        super(_getHomeStateBasedOnRepos(authRepo, gameRepo, remoteConfigRepo, dateManagerRepo, [], isInitial: true)) {
    on<HomeEvent>(
      (event, emit) => event.map(
        userUpdated: (event) => _userUpdated(event, emit),
        dateUpdated: (event) => _dateUpdated(event, emit),
        gamesUpdated: (event) => _gamesUpdated(event, emit),
        openGame: (event) => _openGame(event, emit),
        topLeaderboardUpdated: (event) => _topLeaderboardUpdated(event, emit),
        sendFeedback: (event) => _sendFeedback(event, emit),
        requiresUpdate: (event) => _requiresUpdate(event, emit),
        errorReceived: (event) => _errorReceived(event, emit),
      ),
    );

    _forceUpdateRepo.isUpdateRequired().then((value) {
      if (value) add(const HomeEvent.requiresUpdate());
    });
    _generalSubscr.addAll([
      authRepo.authState.listen(
        (authState) => switch (authState) {
          Authenticated(:final user) => add(HomeEvent.userUpdated(user)),
          UnAuthenticated() => add(const HomeEvent.userUpdated(null)),
        },
      ),
      authRepo.authState.map((state) => state.isAuth).distinct().listen((isAuth) => _resubscribeToGames()),
      _referalRepo.linkTappedStream.listen((deepLink) async {
        if (authRepo.user == null || deepLink == null) return;

        switch (deepLink) {
          case GameDeepLink():
            add(HomeEvent.openGame(deepLink.gameId));

          case DeepLinkUndefined():
            add(const HomeEvent.errorReceived('Error happened while opening deep link'));
        }
      }),
      _dateManagerRepo.currDayStream.listen((dateTime) => add(HomeEvent.dateUpdated(dateTime))),
    ]);
  }

  void _userUpdated(_UserUpdated event, Emitter<HomeState> emit) {
    if (event.user == null) _gameRepo.clearGameRepo();
    emit(_getHomeStateBasedOnRepos(_authRepo, _gameRepo, _remoteConfigRepo, _dateManagerRepo, state.topPlayers));
  }

  void _dateUpdated(_DateUpdated event, Emitter<HomeState> emit) {
    emit(_getHomeStateBasedOnRepos(_authRepo, _gameRepo, _remoteConfigRepo, _dateManagerRepo, state.topPlayers));
  }

  void _gamesUpdated(_GamesUpdated event, Emitter<HomeState> emit) {
    emit(_getHomeStateBasedOnRepos(_authRepo, _gameRepo, _remoteConfigRepo, _dateManagerRepo, state.topPlayers));
  }

  void _openGame(_OpenGame event, Emitter<HomeState> emit) {
    state.mapOrNull(
      user: (state) {
        emit(state.copyWith(gameToOpen: event.id));
        emit(state.copyWith(gameToOpen: null));
      },
    );
  }

  void _topLeaderboardUpdated(_TopLeaderboardUpdated event, Emitter<HomeState> emit) {
    emit(_getHomeStateBasedOnRepos(_authRepo, _gameRepo, _remoteConfigRepo, _dateManagerRepo, event.leaderboardUsers));
  }

  void _requiresUpdate(_RequiresUpdate event, Emitter<HomeState> emit) {
    emit(HomeState.requiresUpdate(error: null, topPlayers: state.topPlayers));
  }

  void _errorReceived(_ErrorReceived event, Emitter<HomeState> emit) {
    emit(state.copyWith(error: event.error));
    emit(state.copyWith(error: null));
  }

  void _sendFeedback(_SendFeedback event, Emitter<HomeState> emit) {
    final contactUsEmail = _remoteConfigRepo.getString(ConfigKeys.contactUsEmail);
    String encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map(
            (MapEntry<String, String> e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
          )
          .join('&');
    }

    final uri =
        Uri(scheme: 'mailto', path: contactUsEmail, query: encodeQueryParameters({'subject': 'Tic Tac Toe Feedback'}));

    launchUrl(uri);
  }

  Future<void> _resubscribeToGames() async {
    await _unsubscribe(_subscrToGames);
    _subscrToGames.addAll([
      _gameRepo.fetchRecentGames().listen((games) => add(HomeEvent.gamesUpdated(games.inProgress, games.recent))),
      _leaderboardRepo.fetchLeaderboardUsersPer(GetLeaderboardPeriod.infinite).listen((leaderboardUsers) {
        add(HomeEvent.topLeaderboardUpdated(leaderboardUsers.take(3).toList()));
      }),
    ]);
  }

  Future<void> _unsubscribe(List<StreamSubscription> list) async {
    for (final element in list) {
      await element.cancel();
    }
    list.clear();
  }

  @override
  Future<void> close() async {
    super.close();
    await _unsubscribe(_generalSubscr);
    await _unsubscribe(_subscrToGames);
  }
}

HomeState _getHomeStateBasedOnRepos(
  AuthRepo authRepo,
  GameRepo gameRepo,
  RemoteConfigRepo remoteConfigRepo,
  DateManagerRepo dateManagerRepo,
  List<LeaderboardUser> topPlayers, {
  bool isInitial = false,
}) {
  final myUser = authRepo.user;
  if (myUser == null) return HomeState.noUser(topPlayers: topPlayers, error: null);

  return HomeState.user(
    user: myUser,
    topPlayers: topPlayers,
    gameToOpen: null,
    datetime: dateManagerRepo.currDayStream.value,
    gamesInProgress: gameRepo.gamesInProgressStream.valueOrNull?.values.toList() ?? [],
    recentGames: gameRepo.recentGamesStream.valueOrNull?.values.toList() ?? [],
    error: null,
  );
}
