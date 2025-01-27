import 'package:rxdart/streams.dart';

abstract class DateManagerRepo {
  ValueStream<DateTime> get currDayStream;
}
