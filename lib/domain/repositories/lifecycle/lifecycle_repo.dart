import 'package:flutter/material.dart';
import 'package:chat_app/domain/models/lifecycle/lifecycle_events.dart';

abstract class LifecycleRepo {
  AppLifecycleState get currentState;
  LifecycleEvents get lifecycleEvent;

  Stream<AppLifecycleState> get stateStream;
  Stream<LifecycleEvents> get lifecycleEventStream;

  void dispose();
}
