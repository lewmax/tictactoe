import 'package:chat_app/core/utils/logger.dart';
import 'package:flutter/material.dart';

class LoggerNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    logDebug(
      'Navigated to ${route.settings.name}'
      '${previousRoute?.settings.name != null ? ' from ${previousRoute?.settings.name}' : ''}',
      objectName: toString(),
    );
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    logDebug(
      'Navigated back from ${route.settings.name} to ${previousRoute?.settings.name}',
      objectName: toString(),
    );
  }
}
