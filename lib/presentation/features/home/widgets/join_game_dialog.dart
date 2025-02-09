import 'package:auto_route/auto_route.dart';
import 'package:chat_app/core/utils/extensions/context_extensions.dart';
import 'package:chat_app/domain/entities/game/game.dart';
import 'package:chat_app/domain/entities/referal/deep_link.dart';
import 'package:chat_app/presentation/common/components/app_button.dart';
import 'package:flutter/material.dart';

class JoinGameDialog extends StatelessWidget {
  const JoinGameDialog({super.key, required this.controller, required this.onJoinGame});

  final TextEditingController controller;
  final Function(BuildContext context, GameId? gameId) onJoinGame;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.l10n.home_join_dialog_title,
              style: context.textStyles.mulish16ExtraBold,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 18),
            Text(context.l10n.home_join_dialog_text,
                style: context.textStyles.mulish15Bold, textAlign: TextAlign.center),
            TextField(
              controller: controller,
              style: context.textStyles.mulish15Medium.copyWith(color: context.colors.grey1),
              decoration: InputDecoration(
                hintText: context.l10n.home_join_dialog_hint,
                labelText: context.l10n.home_join_dialog_hint,
                hintStyle: context.textStyles.mulish15Medium.copyWith(color: context.colors.grey2),
                labelStyle: context.textStyles.mulish15Medium.copyWith(color: context.colors.grey2),
              ),
            ),
            const SizedBox(height: 18),
            AppButton(
              title: context.l10n.home_join_dialog_playBtn,
              color: context.colors.primaryColor,
              style: context.textStyles.mulish14Bold.copyWith(color: context.colors.white),
              isContentCentered: true,
              onTap: () {
                final text = controller.text.trim();
                final link = GameDeepLink.fromUrl(text);

                context.router.maybePop();
                onJoinGame(context, link.gameId);
              },
            ),
            const SizedBox(height: 27),
            GestureDetector(
              onTap: () {
                context.router.maybePop();
                onJoinGame(context, null);
              },
              child: Text(
                context.l10n.home_join_dialog_dontHaveInviteCode,
                textAlign: TextAlign.center,
                style: context.textStyles.mulish18.copyWith(
                  color: context.colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: context.colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
