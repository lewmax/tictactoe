import 'package:chat_app/core/utils/string_parser.dart';
import 'package:chat_app/domain/models/app/config_keys.dart';
import 'package:chat_app/domain/repositories/app/app_config_repo.dart';
import 'package:chat_app/domain/repositories/app/remote_config_repo.dart';
import 'package:chat_app/domain/repositories/force_update/force_update_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ForceUpdateRepo)
final class ForceUpdateRepoImpl implements ForceUpdateRepo {
  final RemoteConfigRepo _remoteConfigRepo;
  final AppConfigRepo _appConfigRepo;

  ForceUpdateRepoImpl(this._remoteConfigRepo, this._appConfigRepo);

  @override
  double getMinVersion() =>
      StringParser.versionDoubleFromString(_remoteConfigRepo.getString(ConfigKeys.forceUpdateMinVersion));

  @override
  Future<bool> isUpdateRequired() async {
    final packageInfo = await _appConfigRepo.getPackageInfo();
    final currentVersion = StringParser.versionDoubleFromString(packageInfo.version);

    return currentVersion < getMinVersion();
  }
}
