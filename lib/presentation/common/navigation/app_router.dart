import 'package:auto_route/auto_route.dart';
import 'package:chat_app/domain/entities/game/game.dart';
import 'package:chat_app/presentation/features/auth/reset_password/reset_password_screen.dart';
import 'package:chat_app/presentation/features/auth/sign/sign_screen.dart';
import 'package:chat_app/presentation/features/auth/sign_in_email/sing_in_email_screen.dart';
import 'package:chat_app/presentation/features/auth/sign_up/sign_up_screen.dart';
import 'package:chat_app/presentation/features/force_update/force_update_page.dart';
import 'package:chat_app/presentation/features/game/ai/ai_game_page.dart';
import 'package:chat_app/presentation/features/game/offline/offline_game_page.dart';
import 'package:chat_app/presentation/features/game/online/game_page.dart';
import 'package:chat_app/presentation/features/home/home_page.dart';
import 'package:chat_app/presentation/features/leaderboard/leaderboard_screen.dart';
import 'package:chat_app/presentation/features/profile/delete_account/delete_account.dart';
import 'package:chat_app/presentation/features/profile/profile_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true, path: '/home'),
        AutoRoute(page: GameRoute.page, path: '/game'),
        AutoRoute(page: SignRoute.page, path: '/sign'),
        AutoRoute(page: ResetPasswordRoute.page, path: '/reset-password'),
        AutoRoute(page: SignUpRoute.page, path: '/sign-up'),
        AutoRoute(page: SignInEmailRoute.page, path: '/sign-email'),
        AutoRoute(page: ProfileRoute.page, path: '/profile'),
        AutoRoute(page: LeaderboardRoute.page, path: '/leaderboard'),
        AutoRoute(page: DeleteAccountRoute.page, path: '/delete-account'),
        AutoRoute(page: ForceUpdateRoute.page, path: '/force-update-route'),
        AutoRoute(page: OfflineGameRoute.page, path: '/offline-game'),
        AutoRoute(page: AiGameRoute.page, path: '/ai-game'),
      ];
}
