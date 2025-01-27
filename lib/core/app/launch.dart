import 'dart:async';

import 'package:chat_app/core/app/bloc/app_bloc_observer.dart';
import 'package:chat_app/core/di/configuration.dart';
import 'package:chat_app/presentation/common/navigation/app_router.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

/// Configurations on app start
Future<AppRouter> launch() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  Bloc.observer = const AppBlocObserver();

  await FlutterBranchSdk.init();
  // FlutterBranchSdk.validateSDKIntegration();
  const environment = String.fromEnvironment("environment", defaultValue: "dev");
  await configureDependencies(environment);

  final router = AppRouter();

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  return router;
}
