// ignore_for_file: use_build_context_synchronously

import 'package:chat_app/core/utils/extensions/context_extensions.dart';
import 'package:chat_app/core/utils/image_picker_utils.dart';
import 'package:chat_app/presentation/common/components/app_button.dart';
import 'package:chat_app/presentation/common/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

enum CallbackType {
  camera,
  library,
}

class PickImageModalBottom extends StatelessWidget {
  final Function(CallbackType callbackType, XFile image) onPhotoSelected;

  const PickImageModalBottom({required this.onPhotoSelected, super.key});

  Future<void> _pickFile(CallbackType callbackType, BuildContext context) async {
    final pickedImage = callbackType == CallbackType.camera
        ? await ImagePickerUtils.takePhotoInCamera(context)
        : await ImagePickerUtils.takePhotoFromGallery(context);

    if (pickedImage == null) return;

    onPhotoSelected(callbackType, pickedImage);

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
      child: Row(
        children: [
          Expanded(
            child: AppButton(
              isContentCentered: true,
              onTap: () {
                _pickFile(CallbackType.camera, context);
              },
              color: AppColors.blue,
              title: context.l10n.avatar_make_photo,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: AppButton(
              isContentCentered: true,
              onTap: () {
                _pickFile(CallbackType.library, context);
              },
              color: AppColors.blue,
              title: context.l10n.avatar_chose_from_gallery,
            ),
          ),
        ],
      ),
    );
  }
}
