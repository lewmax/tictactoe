import 'package:cloud_firestore/cloud_firestore.dart';

abstract class FirebaseDateConverter {
  static DateTime? datetimeMapToJsonNullable(DateTime? dateTime) => dateTime;
  static DateTime? datetimeMapFromJsonNullable(dynamic timeStamp) {
    if (timeStamp == null) return null;

    if (timeStamp is Timestamp) {
      return timeStamp.toDate();
    } else if (timeStamp is int) {
      return DateTime.fromMillisecondsSinceEpoch(timeStamp);
    } else if (timeStamp is String) {
      return DateTime.tryParse(timeStamp) ?? DateTime.now();
    } else {
      return DateTime.now();
    }
  }

  static DateTime datetimeMapToJson(DateTime dateTime) => dateTime;
  static DateTime datetimeMapFromJson(dynamic timeStamp) {
    if (timeStamp is Timestamp) {
      return timeStamp.toDate();
    } else if (timeStamp is int) {
      return DateTime.fromMillisecondsSinceEpoch(timeStamp);
    } else if (timeStamp is String) {
      return DateTime.tryParse(timeStamp) ?? DateTime.now();
    } else {
      return DateTime.now();
    }
  }
}
