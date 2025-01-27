import 'package:chat_app/core/utils/extensions/integer_extensions.dart';

extension DateTimeExtensions on DateTime {
  bool isSameDay(DateTime other) => other.year == year && other.month == month && other.day == day;

  bool get isToday => isSameDay(DateTime.now().toUtc());

  bool get isLessThan24Hours => difference(DateTime.now().toUtc()).inHours < 24;

  bool get isYesterday => isSameDay(DateTime.now().toUtc().subtract(1.days));

  bool get isTomorrow => isSameDay(DateTime.now().toUtc().add(1.days));

  bool get isThisYear => DateTime.now().toUtc().year == year;

  /// Result: 2023-12-05T13:27:59.801069+0200
  String toLocalIso8601String() {
    return "${toLocal().toIso8601String()}${_timeZoneFormatter(timeZoneOffset)}";
  }

  String _timeZoneFormatter(Duration offset) =>
      "${offset.isNegative ? "-" : "+"}${offset.inHours.abs().toString().padLeft(2, "0")}${(offset.inMinutes - offset.inHours * 60).abs().toString().padLeft(2, "0")}";

  bool isTimeBetween(DateTime timeStart, DateTime timeEnd) {
    return isAfter(timeStart) && isBefore(timeEnd);
  }

  ///get duration till end of day
  Duration get getDurationTillEOD =>
      (isUtc ? DateTime.utc(year, month, day + 1) : DateTime(year, month, day + 1)).difference(this);
}
