import 'dart:async';

import 'package:flutter/material.dart';

///It is created to handle issues when you want to open a dialog when there is a current one on the page.
///It will not handle if you want to display 2 new dialogs when there is already one on the page
mixin DialogManagerMixin {
  Completer<void>? _dialogCompleter;

  bool get isDialogOpen => _dialogCompleter != null;

  Future<T?> showManagedDialog<T>(
    BuildContext context, {
    required Widget Function(BuildContext context) builder,
    Color? barrierColor,
    bool barrierDismissible = true,
    bool showAfterPreviousDialogIsClosed = true,
  }) async {
    if (_dialogCompleter != null) await _dialogCompleter!.future;

    if (!context.mounted) return null;
    _dialogCompleter = Completer<void>();
    final res = await showDialog<T>(
      context: context,
      builder: builder,
      barrierColor: barrierColor,
      barrierDismissible: barrierDismissible,
    );

    _dialogCompleter?.complete();
    _dialogCompleter = null;

    return res;
  }
}
