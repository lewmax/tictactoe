abstract class ForceUpdateRepo {
  double getMinVersion();
  Future<bool> isUpdateRequired();
}
