import 'dart:developer';

import 'package:flutter/foundation.dart';

void logDebug(Object? message, {String? name, String? objectName, Object? error, StackTrace? stackTrace}) {
  String loggerName = objectName ?? name ?? 'logger';

  if (objectName != null) {
    loggerName = loggerName.split(' ').last;
  }

  if (kDebugMode) {
    log(message.toString(), time: DateTime.now(), name: loggerName, error: error, stackTrace: stackTrace);
  }
}
