import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chat_app/core/utils/logger.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    final states = change.toString().split('{').last.trim().split('}').first.trim();
    logDebug('--- ${bloc.runtimeType} onChange ---', objectName: toString());
    logDebug(states, objectName: toString());
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    logDebug('--- ${bloc.runtimeType} onError ---', objectName: toString());
    logDebug('$error, $stackTrace', objectName: toString());
    super.onError(bloc, error, stackTrace);
  }
}
