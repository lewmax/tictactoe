import 'package:flutter/widgets.dart';

///Events are based on [AppLifecycleState] received
///Here is the full lifecycle of states:
/// [AppLifecycleState.resumed],
/// [AppLifecycleState.inactive],
/// [AppLifecycleState.hidden],

/// [AppLifecycleState.paused],

/// [AppLifecycleState.hidden],
/// [AppLifecycleState.inactive],
/// [AppLifecycleState.resumed],
enum LifecycleEvents {
  /// Notification panel opened or multitask mode is on
  /// States order: [AppLifecycleState.resumed], [AppLifecycleState.inactive]
  slightOffline,

  /// App was [slightOffline] and became online
  /// States order: [AppLifecycleState.resumed], [AppLifecycleState.inactive], [AppLifecycleState.resumed]
  onlineFromSlightOffline,

  /// App is minimized. [slightOffline] is called before this
  /// States order: [AppLifecycleState.inactive], [AppLifecycleState.hidden]
  fullOffline,

  /// App was [fullOffline] and became online
  /// States order: [AppLifecycleState.hidden], [AppLifecycleState.inactive], [AppLifecycleState.resumed]
  onlineFromFullOffline;

  bool get isOnline => this == onlineFromSlightOffline || this == onlineFromFullOffline;
}
