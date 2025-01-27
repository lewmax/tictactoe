import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:chat_app/core/utils/logger.dart';
import 'package:chat_app/domain/models/lifecycle/lifecycle_events.dart';
import 'package:chat_app/domain/repositories/lifecycle/lifecycle_repo.dart';

@LazySingleton(as: LifecycleRepo)
class LifecycleRepoImpl extends LifecycleRepo {
  late final AppLifecycleListener _listener;
  final _stateStreamController = PublishSubject<AppLifecycleState>();

  LifecycleRepoImpl() {
    _listener = AppLifecycleListener(
      onStateChange: (value) {
        logDebug(value);
        _stateStreamController.sink.add(value);
        _updateStateHistory(value);
        _currentState = value;
      },
    );
  }

  AppLifecycleState _currentState = AppLifecycleState.resumed;

  // Buffer to keep the last few states for sequence-based evaluation
  final List<AppLifecycleState> _stateHistory = [];

  @override
  AppLifecycleState get currentState => _currentState;

  @override
  Stream<AppLifecycleState> get stateStream => _stateStreamController.stream;

  @override
  LifecycleEvents get lifecycleEvent => _getLifecycleEventFromAppState();

  @override
  Stream<LifecycleEvents> get lifecycleEventStream =>
      _stateStreamController.stream.map((_) => _getLifecycleEventFromAppState()).distinct();

  // Updates the state history with the new state, maintaining only the recent states needed
  void _updateStateHistory(AppLifecycleState newState) {
    _stateHistory.add(newState);
    if (_stateHistory.length > 4) {
      _stateHistory.removeAt(0); // Keep the buffer size manageable
    }
  }

  LifecycleEvents _getLifecycleEventFromAppState() {
    // Define expected state sequences for each lifecycle event
    const slightOfflineSequence = [AppLifecycleState.resumed, AppLifecycleState.inactive];
    const onlineFromSlightOfflineSequence = [
      AppLifecycleState.resumed,
      AppLifecycleState.inactive,
      AppLifecycleState.resumed,
    ];
    const fullOfflineSequence = [AppLifecycleState.inactive, AppLifecycleState.hidden];
    const onlineFromFullOfflineSequence = [
      AppLifecycleState.hidden,
      AppLifecycleState.inactive,
      AppLifecycleState.resumed,
    ];

    // Check the current state history to match against these sequences
    if (_matchesSequence(slightOfflineSequence)) {
      return LifecycleEvents.slightOffline;
    } else if (_matchesSequence(onlineFromSlightOfflineSequence)) {
      return LifecycleEvents.onlineFromSlightOffline;
    } else if (_matchesSequence(fullOfflineSequence)) {
      return LifecycleEvents.fullOffline;
    } else if (_matchesSequence(onlineFromFullOfflineSequence)) {
      return LifecycleEvents.onlineFromFullOffline;
    } else {
      // Default event if no specific sequence is matched
      return LifecycleEvents.fullOffline;
    }
  }

  // Utility to check if the current state history matches a target sequence
  bool _matchesSequence(List<AppLifecycleState> sequence) {
    if (_stateHistory.length < sequence.length) {
      return false;
    }

    for (int i = 0; i < sequence.length; i++) {
      if (_stateHistory[_stateHistory.length - sequence.length + i] != sequence[i]) {
        return false;
      }
    }
    return true;
  }

  @override
  @disposeMethod
  void dispose() {
    _listener.dispose();
    _stateStreamController.close();
  }
}
