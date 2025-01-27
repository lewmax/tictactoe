abstract interface class DeviceUuidRepository {
  String? getDeviceUuid();

  Future<void> setDeviceUuid(String uuid);

  Future<void> clearDeviceUuid();
}
