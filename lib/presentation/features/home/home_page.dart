import 'package:auto_route/auto_route.dart';
import 'package:chat_app/core/utils/extensions/context_extensions.dart';
import 'package:chat_app/domain/entities/game/game.dart';
import 'package:chat_app/domain/entities/user/user.dart';
import 'package:chat_app/presentation/common/bloc/bloced_state.dart';
import 'package:chat_app/presentation/common/bloc/bloced_widget.dart';
import 'package:chat_app/presentation/common/components/app_button.dart';
import 'package:chat_app/presentation/common/components/circle_user_image.dart';
import 'package:chat_app/presentation/common/layout/expanded_single_child_scroll_view.dart';
import 'package:chat_app/presentation/common/mixins/snackbar_presenter.dart';
import 'package:chat_app/presentation/common/navigation/app_router.dart';
import 'package:chat_app/presentation/common/theme/theme.dart';
import 'package:chat_app/presentation/features/home/bloc/home_bloc.dart';
import 'package:chat_app/presentation/features/home/widgets/game_in_progress_widget.dart';
import 'package:chat_app/presentation/features/home/widgets/home_leaderboard_widget.dart';
import 'package:chat_app/presentation/features/home/widgets/join_game_dialog.dart';
import 'package:chat_app/presentation/features/home/widgets/recent_game_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bloc/bloc_listener.dart';
part 'widgets/home_apppar.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BlocedState<HomePage, HomeBloc, HomeState> with SnackBarPresenter, HomePageMixin {
  @override
  _HomePageState get thisScreenGetter => this;

  User? get user => bloc.state.mapOrNull(user: (state) => state.user);

  Future _validateUser(BuildContext context, Function() onSignedIn) async {
    if (user == null) return context.router.push(SignRoute(onSignedIn: () => onSignedIn()));

    onSignedIn();
  }

  void _validateNavigationToGamePage(
    BuildContext context, {
    required GameId? gameId,
    required bool isFromMatchingScreen,
  }) {
    context.router
        .pushAndPopUntil(GameRoute(gameId: gameId), predicate: (route) => route.settings.name == HomeRoute.name);
  }

  void onJoinTapped(BuildContext context) {
    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => JoinGameDialog(
        controller: controller,
        onJoinGame: (context, gameId) =>
            _validateNavigationToGamePage(context, gameId: gameId, isFromMatchingScreen: false),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: listeners(),
      child: Scaffold(
        backgroundColor: AppColors.whiteBg,
        appBar: const _HomeApppar(),
        body: ExpandedSingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 36),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 39),
                child: SizedBox(
                  height: 53,
                  child: AppButton(
                    title: 'Play with Script',
                    style: mulish17Bold.copyWith(color: AppColors.white),
                    color: AppColors.red2,
                    padding: EdgeInsets.zero,
                    isContentCentered: true,
                    onTap: () {
                      context.router.push(const OfflineGameRoute());
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 39),
                child: SizedBox(
                  height: 53,
                  child: AppButton(
                    title: 'Play with a Friend',
                    style: mulish17Bold.copyWith(color: AppColors.white),
                    color: AppColors.blue1,
                    padding: EdgeInsets.zero,
                    isContentCentered: true,
                    onTap: () {
                      _validateUser(
                        context,
                        () => _validateNavigationToGamePage(context, gameId: null, isFromMatchingScreen: false),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 39),
                child: SizedBox(
                  height: 53,
                  child: AppButton(
                    title: 'Play with AI',
                    style: mulish17Bold.copyWith(color: AppColors.white),
                    color: AppColors.red2,
                    padding: EdgeInsets.zero,
                    isContentCentered: true,
                    onTap: () {
                      _validateUser(context, () => context.router.push(const AiGameRoute()));
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _validateUser(context, () => onJoinTapped(context)),
                child: Text(
                  context.l10n.home_playInviteCode,
                  style: mulish18.copyWith(
                    color: AppColors.blue,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.blue,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              blocValueBuilder(
                getter: (state) =>
                    state.mapOrNull(user: (state) => state.topPlayers, noUser: (state) => state.topPlayers),
                builder: (context, topPlayers) {
                  return HomeLeaderboardWidget(
                    topPlayers: topPlayers ?? [],
                    onTap: () {
                      context.router.pushAndPopUntil(
                        const LeaderboardRoute(),
                        predicate: (route) => route.settings.name == HomeRoute.name,
                      );
                      // _validateUser(
                      //   context,
                      //   () => context.router.pushAndPopUntil(
                      //     const LeaderboardRoute(),
                      //     predicate: (route) => route.settings.name == HomeRoute.name,
                      //   ),
                      // );
                    },
                  );
                },
              ),
              blocValueBuilder(
                getter: (state) => state.mapOrNull(user: (state) => state.gamesInProgress),
                builder: (context, gamesInProgress) {
                  if (gamesInProgress == null || gamesInProgress.isEmpty) return const SizedBox.shrink();

                  return _gamesInProgress(gamesInProgress, context);
                },
              ),
              blocValueBuilder(
                getter: (state) => state.mapOrNull(user: (state) => state.recentGames),
                builder: (context, recentGames) {
                  if (recentGames == null || recentGames.isEmpty) return const SizedBox.shrink();

                  return _recentGames(recentGames, context);
                },
              ),
              const SizedBox(height: 14),
              _feedback(),
              const SizedBox(height: 44),
            ],
          ),
        ),
      ),
    );
  }

  Row _feedback() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('We love feedback!', style: mulish16),
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => bloc.add(const HomeEvent.sendFeedback()),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Text('Contact us', style: mulish16.copyWith(color: AppColors.blue)),
            ),
          ),
        ),
      ],
    );
  }

  Widget _recentGames(List<Game> recentGames, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ColoredBox(
        color: Colors.white,
        child: Column(
          children: [
            const Divider(height: 0, thickness: 1, color: AppColors.grey4),
            const SizedBox(height: 15),
            Text(context.l10n.home_yourRecentGames, style: paytone18, textAlign: TextAlign.center),
            const SizedBox(height: 12),
            ...recentGames.map((game) => RecentGameWidget(game: game)),
            const Divider(height: 0, thickness: 1, color: AppColors.grey4),
          ],
        ),
      ),
    );
  }

  Widget _gamesInProgress(List<Game> gamesInProgress, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ColoredBox(
        color: Colors.white,
        child: Column(
          children: [
            const Divider(height: 0, thickness: 1, color: AppColors.grey4),
            const SizedBox(height: 15),
            Text(context.l10n.home_gamesInProgress, style: paytone18, textAlign: TextAlign.center),
            const SizedBox(height: 12),
            ...gamesInProgress.map((game) => GameInProgressWidget(game: game)),
            const SizedBox(height: 15),
            const Divider(height: 0, thickness: 1, color: AppColors.grey4),
          ],
        ),
      ),
    );
  }
}
