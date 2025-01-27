import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:chat_app/domain/repositories/app/device_uuid_repository.dart';

@LazySingleton(as: DeviceUuidRepository)
class DeviceUuidRepoImpl extends DeviceUuidRepository {
  final SharedPreferences _sharedPreferences;

  static const _deviceUuidKey = 'device_uuid';

  DeviceUuidRepoImpl(this._sharedPreferences);

  @override
  Future<void> clearDeviceUuid() async {
    await _sharedPreferences.remove(_deviceUuidKey);
  }

  @override
  String? getDeviceUuid() {
    return _sharedPreferences.getString(_deviceUuidKey);
  }

  @override
  Future<void> setDeviceUuid(String uuid) async {
    await _sharedPreferences.setString(_deviceUuidKey, uuid);
  }
}
