import 'package:auto_route/auto_route.dart' hide DeepLink;
import 'package:chat_app/core/utils/extensions/context_extensions.dart';
import 'package:chat_app/domain/entities/referal/deep_link.dart';
import 'package:chat_app/presentation/common/components/app_button.dart';
import 'package:chat_app/presentation/common/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class InviteDialog extends StatelessWidget {
  const InviteDialog({super.key, required this.code});

  final GameDeepLink code;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(22),
      backgroundColor: Colors.transparent,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey1),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.l10n.game_invite_dialog_title,
              style: mulish16ExtraBold,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 18),
            Text(
              context.l10n.game_invite_dialog_subtitle,
              style: mulish15Bold,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    style: mulish15Medium.copyWith(color: AppColors.grey1),
                    textAlign: TextAlign.center,
                    controller: TextEditingController(text: code.url.replaceAll('https://', '')),
                    enabled: false,
                  ),
                ),
                const SizedBox(width: 12),
              ],
            ),
            const SizedBox(height: 18),
            AppButton(
              title: context.l10n.game_invite_dialog_btn,
              isContentCentered: true,
              style: inter14Bold.copyWith(color: AppColors.white),
              color: AppColors.blue1,
              onTap: () async {
                await Share.share(
                  "Play a game of TicTacToe with me! The game invite code is ${code.gameId.rawValue}. ${code.url}",
                );
              },
            ),
            const SizedBox(height: 14),
            GestureDetector(
              onTap: () {
                context.router.maybePop();
              },
              child: Text(
                context.l10n.game_invite_dialog_link,
                style: mulish18.copyWith(
                  color: AppColors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.blue,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
