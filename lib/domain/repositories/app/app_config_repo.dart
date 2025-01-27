import 'package:chat_app/domain/entities/app/app_config.dart';
import 'package:chat_app/domain/entities/app/package_info_data.dart';

abstract interface class AppConfigRepo {
  AppConfig getAppConfig();
  Future<PackageInfoData> getPackageInfo();
}
