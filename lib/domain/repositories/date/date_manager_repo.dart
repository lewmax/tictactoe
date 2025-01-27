import 'package:rxdart/streams.dart';

abstract interface class DateManagerRepo {
  ValueStream<DateTime> get currDayStream;
}
