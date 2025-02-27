import 'dart:async';

import 'package:chat_app/core/utils/logger.dart';
import 'package:chat_app/domain/repositories/screen_activity/screen_activity_repo.dart';
import 'package:injectable/injectable.dart';
import 'package:screen_state/screen_state.dart';

@LazySingleton(as: ScreenActivityRepo)
final class ScreenActivityRepoImpl implements ScreenActivityRepo {
  final _screen = Screen();

  late final StreamSubscription<ScreenStateEvent> _subscr;

  ScreenActivityRepoImpl() {
    _subscr = _screen.screenStateStream.listen(
      (event) {
        logDebug(event);
        _isScreenUnlocked = event == ScreenStateEvent.SCREEN_UNLOCKED;
      },
    );
  }

  bool _isScreenUnlocked = true;

  @override
  bool get isScreenUnlocked => _isScreenUnlocked;

  @override
  @disposeMethod
  void dispose() {
    _subscr.cancel();
  }
}
