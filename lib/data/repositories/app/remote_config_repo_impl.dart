import 'dart:convert';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:injectable/injectable.dart';
import 'package:chat_app/core/utils/extensions/integer_extensions.dart';
import 'package:chat_app/core/utils/logger.dart';
import 'package:chat_app/domain/models/app/config_keys.dart';
import 'package:chat_app/domain/repositories/app/remote_config_repo.dart';

@LazySingleton(as: RemoteConfigRepo)
class RemoteConfigRepoImpl implements RemoteConfigRepo {
  final FirebaseRemoteConfig _firebaseRemoteConfig;

  @FactoryMethod(preResolve: true)
  RemoteConfigRepoImpl._(this._firebaseRemoteConfig);

  @FactoryMethod(preResolve: true)
  static Future<RemoteConfigRepoImpl> create(@injectable FirebaseRemoteConfig firebaseRemoteConfig) async {
    final instance = RemoteConfigRepoImpl._(firebaseRemoteConfig);
    await instance._init();
    return instance;
  }

  Future<void> _init() async {
    await _firebaseRemoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: 5.seconds,
        minimumFetchInterval: 5.seconds,
      ),
    );
    await _firebaseRemoteConfig.fetchAndActivate();
  }

  @override
  String getString(ConfigKeys key) {
    return _firebaseRemoteConfig.getString(key.name);
  }

  bool getBool(ConfigKeys key) {
    final value = _firebaseRemoteConfig.getBool(key.name);
    return value;
  }

  @override
  List<String> getList(ConfigKeys key) {
    try {
      final res = _firebaseRemoteConfig.getString(key.name);
      final map = jsonDecode(res) as Map<String, dynamic>;
      final list = (map[key.name] as List).cast<String>();

      return list;
    } catch (e, sT) {
      logDebug('Remote config error');
      FirebaseCrashlytics.instance.recordError(e, sT);
      return [];
    }
  }

  @override
  int getInt(ConfigKeys key) {
    return _firebaseRemoteConfig.getInt(key.name);
  }
}
