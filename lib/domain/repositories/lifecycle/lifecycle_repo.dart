import 'package:chat_app/domain/models/lifecycle/lifecycle_events.dart';
import 'package:flutter/material.dart';

abstract interface class LifecycleRepo {
  AppLifecycleState get currentState;
  LifecycleEvents get lifecycleEvent;

  Stream<AppLifecycleState> get stateStream;
  Stream<LifecycleEvents> get lifecycleEventStream;

  void dispose();
}
