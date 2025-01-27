import 'dart:async';
import 'dart:convert';

import 'package:chat_app/core/utils/extensions/integer_extensions.dart';
import 'package:chat_app/data/core/mixins/repository_validation_mixin.dart';
import 'package:chat_app/data/remote/network_response.dart';
import 'package:chat_app/domain/repositories/date/date_manager_repo.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: DateManagerRepo)
final class DateManagerRepoImpl with RepositoryValidationMixin implements DateManagerRepo {
  @FactoryMethod(preResolve: true)
  static Future<DateManagerRepoImpl> create() async {
    final instance = DateManagerRepoImpl._();
    await instance._init(true);
    return instance;
  }

  DateManagerRepoImpl._();

  final _currDay = BehaviorSubject<DateTime>();

  @override
  ValueStream<DateTime> get currDayStream => _currDay.stream;

  Timer? _timer;

  Future<void> _init(bool isInitial) async {
    final resp = await getCurrentServerDate();
    if (resp.failure != null && isInitial) throw Exception('Failed to get current server date');
    final now = resp.success ?? (_currDay.valueOrNull?.add(1.days) ?? DateTime.now().toUtc());

    final tomorrow = DateTime(now.year, now.month, now.day + 1, 0, 10); // Next day at 00:10
    final durationUntilMidnight = tomorrow.difference(now);
    _timer?.cancel();
    _timer = Timer(durationUntilMidnight, () => _init(false));

    _currDay.value = now;
  }

  Future<NetworkResponse<DateTime>> getCurrentServerDate() async {
    return handleRequest(
      () async {
        const apiKey = 'B3D611IK0DOO';
        const utcZone = 'Antarctica/Troll';
        final url =
            Uri.parse('http://api.timezonedb.com/v2.1/get-time-zone?key=$apiKey&format=json&by=zone&zone=$utcZone');

        try {
          final http.Response response = await http.get(url);

          if (response.statusCode == 200) {
            final data = jsonDecode(response.body) as Map<String, dynamic>;
            if (data['status'] == 'OK') {
              final dateTimeString = data['formatted'] as String;
              final date = DateTime.parse(dateTimeString);
              return NetworkResponse.success(date);
            } else {
              return NetworkResponse.failure(data['message'] as String);
            }
          } else {
            return NetworkResponse.failure('Failed to fetch UTC time. Status code: ${response.statusCode}');
          }
        } catch (e) {
          return NetworkResponse.failure('Error fetching UTC time: $e');
        }
      },
    );
  }
}
