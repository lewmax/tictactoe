import 'package:chat_app/core/utils/logger.dart';
import 'package:chat_app/presentation/common/theme/theme.dart';
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
            content: Text(message, style: mulish14.copyWith(color: AppColors.white)),
            duration: durration,
            behavior: SnackBarBehavior.floating,
            backgroundColor: isError ? AppColors.red1 : AppColors.black1,
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
