import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:chat_app/core/app/navigation/logger_navigator_observer.dart';
import 'package:chat_app/core/di/locator.dart';
import 'package:chat_app/l10n/s.dart';
import 'package:chat_app/presentation/common/navigation/app_router.dart';
import 'package:chat_app/presentation/features/home/bloc/home_bloc.dart';

const _maxTextScaleFactor = 1.2;

class App extends StatelessWidget {
  final AppRouter router;

  const App({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => locator<HomeBloc>()),
      ],
      child: MaterialApp.router(
        // title: 'Psycle',
        // locale: vm.appLocale.locale,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.supportedLocales,
        routerConfig: router.config(
          navigatorObservers: () => [LoggerNavigatorObserver()],
        ),
        builder: (context, child) {
          final mediaQuery = MediaQuery.of(context);
          // ignore: deprecated_member_use
          final limitedTextScaleFactor = math.min(mediaQuery.textScaleFactor, _maxTextScaleFactor);

          return BlocListener<HomeBloc, HomeState>(
            listenWhen: (prev, curr) =>
                (prev is HomeStateNoUser && curr is HomeStateUser) ||
                (prev is HomeStateUser && curr is HomeStateNoUser) ||
                curr is HomeStateRequiresUpdate,
            listener: (context, state) => state.map(
              user: (state) => router.popUntil((route) => route.data?.name == HomeRoute.name),
              noUser: (_) => router.popUntil((route) => route.data?.name == HomeRoute.name),
              requiresUpdate: (_) => router.replace(const ForceUpdateRoute()),
            ),
            child: MediaQuery(
              // ignore: deprecated_member_use
              data: mediaQuery.copyWith(textScaleFactor: limitedTextScaleFactor),
              child: GestureDetector(
                // onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                child: child ?? const SizedBox(),
              ),
            ),
          );
        },
      ),
    );
  }
}
