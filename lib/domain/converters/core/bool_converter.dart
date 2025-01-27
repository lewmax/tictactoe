import 'package:json_annotation/json_annotation.dart';

class BoolToStringConverter implements JsonConverter<bool, String> {
  const BoolToStringConverter();

  @override
  bool fromJson(String json) {
    return json.toLowerCase() == 'true';
  }

  @override
  String toJson(bool object) {
    return object.toString();
  }
}
