import 'package:chat_app/core/app/app.dart';
import 'package:chat_app/core/app/launch.dart';
import 'package:chat_app/presentation/features/restart/restart_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  try {
    final router = await launch();
    FlutterNativeSplash.remove();
    runApp(App(router: router));
  } catch (e) {
    FlutterNativeSplash.remove();
    runApp(const RestartPage());
    // FirebaseCrashlytics.instance.recordError(e, sT);
  }
}
