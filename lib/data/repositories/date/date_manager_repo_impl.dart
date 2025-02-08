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
    await instance._init();
    return instance;
  }

  DateManagerRepoImpl._();

  late final Duration _serverLocalTimeDiff;
  final _currDay = BehaviorSubject<DateTime>();

  @override
  ValueStream<DateTime> get currDayStream {
    _updateCurrentTime();
    return _currDay.stream;
  }

  Timer? _timer;

  void _updateCurrentTime() {
    final now = DateTime.now().toUtc().subtract(_serverLocalTimeDiff);
    if (_currDay.hasValue && _currDay.value.hour == now.hour && _currDay.value.minute == now.minute) return;
    _currDay.value = now;
  }

  Future<void> _init() async {
    final resp = await _getCurrentServerDate();

    if (resp.failure != null) throw Exception('Failed to get current server date');

    final now = resp.successOrThrow;
    _serverLocalTimeDiff = DateTime.now().toUtc().difference(now);

    _updateCurrentTime();

    // Schedule periodic updates
    _timer?.cancel();
    _timer = Timer.periodic(1.hours, (_) {
      _updateCurrentTime();
    });
  }

  Future<NetworkResponse<DateTime>> _getCurrentServerDate() async {
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
              final timestamp = data['timestamp'] as int;
              final date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000, isUtc: true);
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
