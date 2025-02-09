import 'dart:io';

import 'package:chat_app/core/utils/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class CirleUserImage extends StatelessWidget {
  final String? image;
  final String? name;
  final double? textSize;
  final double radius;

  final bool _isNetwork;

  const CirleUserImage.network({super.key, required this.image, this.name, this.radius = 13, this.textSize})
      : _isNetwork = true;
  const CirleUserImage.file({super.key, required this.image, this.name, this.radius = 13, this.textSize})
      : _isNetwork = false;

  @override
  Widget build(BuildContext context) {
    final ImageProvider? backgroundImage = image == null
        ? null
        : _isNetwork
            ? NetworkImage(image!)
            : FileImage(File(image!));

    return CircleAvatar(
      backgroundColor: context.colors.blue,
      backgroundImage: backgroundImage,
      radius: radius,
      child: image == null
          ? Text(name?[0] ?? 'U', style: context.textStyles.mulish16.copyWith(color: context.colors.white, fontSize: textSize))
          : null,
    );
  }
}
