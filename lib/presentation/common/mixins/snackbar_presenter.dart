import 'package:chat_app/core/utils/extensions/context_extensions.dart';
import 'package:chat_app/core/utils/logger.dart';
import 'package:flutter/material.dart';

mixin SnackBarPresenter {
  void showSnackbar(
    BuildContext context,
    String message, {
    required bool isError,
    Duration durration = const Duration(seconds: 2),
    required double height,
    Function()? onClosed,
  }) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context)
        .showSnackBar(
          SnackBar(
            content: Text(message, style: context.textStyles.mulish14.copyWith(color: context.colors.white)),
            duration: durration,
            behavior: SnackBarBehavior.floating,
            backgroundColor: isError ? context.colors.red : context.colors.black,
            margin: EdgeInsets.only(bottom: height),
          ),
        )
        .closed
        .then((reason) {
      logDebug('------------ $reason');
      onClosed?.call();
    });
  }
}
