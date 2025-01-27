import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:chat_app/core/utils/extensions/context_extensions.dart';
import 'package:chat_app/presentation/common/components/platform_alert_dialog.dart';

class ImagePickerUtils {
  static final _imagePicker = ImagePicker();

  static Future<XFile?> takePhotoInCamera(BuildContext context) async {
    try {
      _handlePermissionsAndReturn(context, _PermissionType.camera);
      final XFile? photo = await _imagePicker.pickImage(source: ImageSource.camera, imageQuality: 60);

      if (photo == null || !context.mounted) return null;
      if (!context.mounted) return null;

      return photo;
    } catch (e) {
      _handlePermissionsAndReturn(context, _PermissionType.camera);
    }
    return null;
  }

  static Future<XFile?> takePhotoFromGallery(BuildContext context) async {
    try {
      _handlePermissionsAndReturn(context, _PermissionType.gallery);

      final XFile? photo = await _imagePicker.pickImage(source: ImageSource.gallery, imageQuality: 60);

      if (photo == null) return null;
      if (!context.mounted) return null;

      return photo;
    } catch (e) {
      _handlePermissionsAndReturn(context, _PermissionType.gallery);
    }
    return null;
  }

  static Future<void> _handlePermissionsAndReturn(BuildContext context, _PermissionType permissionType) async {
    final permissionStatus = permissionType == _PermissionType.gallery
        ? await [Permission.mediaLibrary].request()
        : await [Permission.camera].request();

    if (permissionStatus.values.every((permissionStatus) => permissionStatus.isGranted)) return;
    if (!context.mounted) return;

    _showPermissionPopup(context, permissionType);
  }

  static Future<void> _showPermissionPopup(BuildContext context, _PermissionType permissionType) async {
    final res = await PlatformAlertDialog(
      title: permissionType == _PermissionType.gallery
          ? context.l10n.avatar_error_permission_gallery_title
          : context.l10n.avatar_error_permission_camera_title,
      content: permissionType == _PermissionType.gallery
          ? context.l10n.avatar_error_permission_gallery_body
          : context.l10n.avatar_error_permission_camera_body,
      textTrue: context.l10n.avatar_go_to_settings,
      textFalse: context.l10n.avatar_deny,
    ).show(context);

    if (res == true) openAppSettings();
  }
}

enum _PermissionType { camera, gallery }
