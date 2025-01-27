import 'package:chat_app/firebase_options.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseModule {
  @singleton
  @preResolve
  Future<FirebaseApp> firebaseApp() async {
    final app = await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    return app;
  }

  @lazySingleton
  FirebaseMessaging firebaseMessaging() => FirebaseMessaging.instance;

  @lazySingleton
  FirebaseFunctions firebaseFunctions() => FirebaseFunctions.instance;

  FirebaseRemoteConfig firebaseRemoteConfig() => FirebaseRemoteConfig.instance;
}
