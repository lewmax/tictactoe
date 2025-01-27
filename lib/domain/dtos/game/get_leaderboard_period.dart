import 'package:json_annotation/json_annotation.dart';

enum GetLeaderboardPeriod {
  @JsonKey(name: '24hours')
  hours24(Duration(hours: 24)),
  @JsonKey(name: '48hours')
  hours48(Duration(hours: 48)),
  @JsonKey(name: 'week')
  week(Duration(days: 7)),
  @JsonKey(name: 'month')
  month(Duration(days: 30)),
  @JsonKey(name: 'infinite')
  infinite(null);

  final Duration? firebasePeriod;

  const GetLeaderboardPeriod(this.firebasePeriod);
}
