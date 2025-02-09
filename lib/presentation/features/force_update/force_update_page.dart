import 'package:auto_route/auto_route.dart';
import 'package:chat_app/core/utils/extensions/context_extensions.dart';
import 'package:chat_app/presentation/common/components/app_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ForceUpdatePage extends StatelessWidget {
  const ForceUpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Update the game to enjoy the new and improved version of the Team Word!',
              style: context.textStyles.mulish18,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            AppButton(
              title: 'Update',
              style: context.textStyles.mulish18,
              color: context.colors.blue,
              isContentCentered: true,
              onTap: () {
                // final config = locator<AppConfigRepo>().getAppConfig();
                // LaunchReview.launch(writeReview: false, iOSAppId: config.appStoreId);
              },
            ),
          ],
        ),
      ),
    );
  }
}
