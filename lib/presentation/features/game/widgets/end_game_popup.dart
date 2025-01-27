import 'package:auto_route/auto_route.dart';
import 'package:chat_app/presentation/common/components/app_outlined_button.dart';
import 'package:chat_app/presentation/common/theme/theme.dart';
import 'package:flutter/material.dart';

class EndGameButton extends StatelessWidget {
  final Function() onTap;
  final String title;

  const EndGameButton({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppOutlinedButton.text(
      title: title,
      isContentCentered: true,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      style: mulish14Bold.copyWith(color: AppColors.red1),
      onTap: () {
        showDialog(
          context: context,
          builder: (_) => Dialog(
            // insetPadding: const EdgeInsets.all(22),
            backgroundColor: Colors.transparent,
            child: Container(
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
                    'Confirm End Game?',
                    style: mulish16Bold.copyWith(color: AppColors.red1),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppOutlinedButton.text(
                        title: 'Confirm',
                        isContentCentered: true,
                        style: mulish14Bold.copyWith(color: AppColors.blue),
                        borderColor: AppColors.blue1,
                        onTap: () {
                          context.router.maybePop();
                          onTap();
                        },
                      ),
                      const SizedBox(width: 16),
                      AppOutlinedButton.text(
                        title: 'Cancel',
                        isContentCentered: true,
                        style: mulish14Bold.copyWith(color: AppColors.blue),
                        borderColor: AppColors.blue,
                        onTap: () {
                          context.router.maybePop();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
