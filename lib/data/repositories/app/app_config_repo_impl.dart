import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:chat_app/core/utils/flavor_dependent_value.dart';
import 'package:chat_app/domain/entities/app/app_config.dart';
import 'package:chat_app/domain/entities/app/package_info_data.dart';
import 'package:chat_app/domain/repositories/app/app_config_repo.dart';

@LazySingleton(as: AppConfigRepo)
class AppConfigRepoImpl implements AppConfigRepo {
  @override
  AppConfig getAppConfig() {
    return AppConfig(
      appStoreId: getFlavorDependentValue<String>("", ""),
    );
  }

  @override
  Future<PackageInfoData> getPackageInfo() async {
    final packageInfo = await PackageInfo.fromPlatform();

    return PackageInfoData(
      bundleId: packageInfo.packageName,
      buildNumber: packageInfo.buildNumber,
      version: packageInfo.version,
      appName: packageInfo.appName,
    );
  }
}
