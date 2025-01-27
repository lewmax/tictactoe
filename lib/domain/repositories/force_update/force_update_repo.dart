abstract interface class ForceUpdateRepo {
  double getMinVersion();
  Future<bool> isUpdateRequired();
}
