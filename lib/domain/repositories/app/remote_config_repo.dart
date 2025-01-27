import 'package:chat_app/domain/models/app/config_keys.dart';

abstract class RemoteConfigRepo {
  List<String> getList(ConfigKeys key);

  String getString(ConfigKeys key);

  int getInt(ConfigKeys key);
}
