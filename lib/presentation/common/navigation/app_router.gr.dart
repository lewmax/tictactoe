// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AiGamePage]
class AiGameRoute extends PageRouteInfo<void> {
  const AiGameRoute({List<PageRouteInfo>? children})
      : super(
          AiGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'AiGameRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AiGamePage();
    },
  );
}

/// generated route for
/// [DeleteAccountPage]
class DeleteAccountRoute extends PageRouteInfo<void> {
  const DeleteAccountRoute({List<PageRouteInfo>? children})
      : super(
          DeleteAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeleteAccountRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DeleteAccountPage();
    },
  );
}

/// generated route for
/// [ForceUpdatePage]
class ForceUpdateRoute extends PageRouteInfo<void> {
  const ForceUpdateRoute({List<PageRouteInfo>? children})
      : super(
          ForceUpdateRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForceUpdateRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ForceUpdatePage();
    },
  );
}

/// generated route for
/// [GamePage]
class GameRoute extends PageRouteInfo<GameRouteArgs> {
  GameRoute({
    GameId? gameId,
    List<PageRouteInfo>? children,
  }) : super(
          GameRoute.name,
          args: GameRouteArgs(gameId: gameId),
          initialChildren: children,
        );

  static const String name = 'GameRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<GameRouteArgs>(orElse: () => const GameRouteArgs());
      return GamePage(gameId: args.gameId);
    },
  );
}

class GameRouteArgs {
  const GameRouteArgs({this.gameId});

  final GameId? gameId;

  @override
  String toString() {
    return 'GameRouteArgs{gameId: $gameId}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [LeaderboardScreen]
class LeaderboardRoute extends PageRouteInfo<void> {
  const LeaderboardRoute({List<PageRouteInfo>? children})
      : super(
          LeaderboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'LeaderboardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LeaderboardScreen();
    },
  );
}

/// generated route for
/// [OfflineGamePage]
class OfflineGameRoute extends PageRouteInfo<void> {
  const OfflineGameRoute({List<PageRouteInfo>? children})
      : super(
          OfflineGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'OfflineGameRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OfflineGamePage();
    },
  );
}

/// generated route for
/// [OfflineMultiplayerGamePage]
class OfflineMultiplayerGameRoute extends PageRouteInfo<void> {
  const OfflineMultiplayerGameRoute({List<PageRouteInfo>? children})
      : super(
          OfflineMultiplayerGameRoute.name,
          initialChildren: children,
        );

  static const String name = 'OfflineMultiplayerGameRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OfflineMultiplayerGamePage();
    },
  );
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileScreen();
    },
  );
}

/// generated route for
/// [ResetPasswordScreen]
class ResetPasswordRoute extends PageRouteInfo<void> {
  const ResetPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return ResetPasswordScreen();
    },
  );
}

/// generated route for
/// [SignInEmailScreen]
class SignInEmailRoute extends PageRouteInfo<SignInEmailRouteArgs> {
  SignInEmailRoute({
    required dynamic Function()? onSignedIn,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SignInEmailRoute.name,
          args: SignInEmailRouteArgs(
            onSignedIn: onSignedIn,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SignInEmailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SignInEmailRouteArgs>();
      return SignInEmailScreen(
        args.onSignedIn,
        key: args.key,
      );
    },
  );
}

class SignInEmailRouteArgs {
  const SignInEmailRouteArgs({
    required this.onSignedIn,
    this.key,
  });

  final dynamic Function()? onSignedIn;

  final Key? key;

  @override
  String toString() {
    return 'SignInEmailRouteArgs{onSignedIn: $onSignedIn, key: $key}';
  }
}

/// generated route for
/// [SignScreen]
class SignRoute extends PageRouteInfo<SignRouteArgs> {
  SignRoute({
    required dynamic Function()? onSignedIn,
    List<PageRouteInfo>? children,
  }) : super(
          SignRoute.name,
          args: SignRouteArgs(onSignedIn: onSignedIn),
          initialChildren: children,
        );

  static const String name = 'SignRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SignRouteArgs>();
      return SignScreen(args.onSignedIn);
    },
  );
}

class SignRouteArgs {
  const SignRouteArgs({required this.onSignedIn});

  final dynamic Function()? onSignedIn;

  @override
  String toString() {
    return 'SignRouteArgs{onSignedIn: $onSignedIn}';
  }
}

/// generated route for
/// [SignUpScreen]
class SignUpRoute extends PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({
    required dynamic Function()? onSignedIn,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SignUpRoute.name,
          args: SignUpRouteArgs(
            onSignedIn: onSignedIn,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SignUpRouteArgs>();
      return SignUpScreen(
        args.onSignedIn,
        key: args.key,
      );
    },
  );
}

class SignUpRouteArgs {
  const SignUpRouteArgs({
    required this.onSignedIn,
    this.key,
  });

  final dynamic Function()? onSignedIn;

  final Key? key;

  @override
  String toString() {
    return 'SignUpRouteArgs{onSignedIn: $onSignedIn, key: $key}';
  }
}
