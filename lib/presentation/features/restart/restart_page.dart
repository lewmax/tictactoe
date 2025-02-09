import 'package:chat_app/core/utils/extensions/context_extensions.dart';
import 'package:chat_app/presentation/common/components/app_button.dart';
import 'package:flutter/material.dart';
import 'package:restart_app/restart_app.dart';

class RestartPage extends StatelessWidget {
  const RestartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Tic Tac Toe'), centerTitle: true),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Some issues happened, try to restart the app!!!',
                  style: context.textStyles.mulish18,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                AppButton(
                  title: 'Restart',
                  style: context.textStyles.mulish17Bold.copyWith(color: context.colors.white),
                  color: context.colors.blue1,
                  isContentCentered: true,
                  onTap: () {
                    Restart.restartApp(
                      // Customizing the notification message only on iOS
                      notificationTitle: 'Restarting App',
                      notificationBody: 'Please tap here to open the app again.',
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
