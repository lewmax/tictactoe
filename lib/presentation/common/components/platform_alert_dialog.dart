import 'dart:io';

import 'package:chat_app/presentation/common/components/platform_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformAlertDialog extends PlatformWidget {
  const PlatformAlertDialog({
    required this.title,
    this.content,
    required this.textTrue,
    this.textFalse,
  });

  final String title;
  final String? content;
  final String textTrue;
  final String? textFalse;

  Future<bool?> show(BuildContext context) async {
    return Platform.isIOS
        ? await showCupertinoDialog<bool>(
            context: context,
            builder: (BuildContext context) => this,
            barrierDismissible: true,
          )
        : await showDialog<bool>(context: context, builder: (BuildContext context) => this);
  }

  @override
  Widget buildCupertinoWidget(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: content == null ? null : Text(content!),
      actions: _buildActions(context),
    );
  }

  @override
  Widget buildMaterialWidget(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: content == null ? null : Text(content!),
      actions: _buildActions(context),
    );
  }

  List<Widget> _buildActions(BuildContext context) {
    return [
      PlatformAlertDialogAction(text: textTrue, onPressed: () => Navigator.of(context).pop(true), isFirst: true),
      if (textFalse != null) ...[
        const SizedBox(width: 16),
        PlatformAlertDialogAction(text: textFalse!, onPressed: () => Navigator.of(context).pop(false), isFirst: false),
      ],
    ];
  }
}

class PlatformAlertDialogAction extends PlatformWidget {
  const PlatformAlertDialogAction({required this.text, required this.onPressed, required this.isFirst});

  final String text;
  final VoidCallback onPressed;
  final bool isFirst;

  Widget _text(BuildContext context) {
    return Text(text);
  }

  @override
  Widget buildCupertinoWidget(BuildContext context) {
    return CupertinoDialogAction(onPressed: onPressed, child: _text(context));
  }

  @override
  Widget buildMaterialWidget(BuildContext context) {
    return TextButton(onPressed: onPressed, child: _text(context));
  }
}
