import 'package:cloud_firestore/cloud_firestore.dart';

abstract class FirebaseDateConverter {
  static int datetimeMapToJson(DateTime dateTime) => dateTime.millisecondsSinceEpoch;
  static DateTime datetimeMapFromJson(dynamic timeStamp) {
    if (timeStamp is Timestamp) {
      return timeStamp.toDate();
    } else if (timeStamp is int) {
      return DateTime.fromMillisecondsSinceEpoch(timeStamp);
    } else {
      return DateTime.now();
    }
  }
}

abstract class GeneralDateConverter {
  static String datetimeMapToJson(DateTime dateTime) => dateTime.millisecondsSinceEpoch.toString();
  static DateTime datetimeMapFromJson(dynamic timeStamp) {
    if (timeStamp is Timestamp) {
      return timeStamp.toDate();
    } else if (timeStamp is int) {
      return DateTime.fromMillisecondsSinceEpoch(timeStamp);
    } else if (timeStamp is String) {
      final date = DateTime.tryParse(timeStamp);
      if (date != null) return date;

      final millisecondsSinceEpoch = int.tryParse(timeStamp);
      if (millisecondsSinceEpoch != null) return DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch);
    }

    throw Exception('Invalid date format');
  }
}
