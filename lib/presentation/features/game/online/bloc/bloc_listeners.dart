part of '../game_page.dart';

mixin GamePageMixin {
  GamePage get thisScreenGetter;

  List<BlocListenerBase> listeners() => [
        thisScreenGetter.blocValueListener(
          getter: (state) => state.gameError,
          listener: (context, gameError) => switch (gameError) {
            null => null,
            GameErrorGameIsFull() || GameErrorIsFinished() => thisScreenGetter.showSnackbar(
                context,
                gameError.error,
                isError: true,
                height: 100,
                onClosed: () => context.maybePop(),
              ),
            _ => thisScreenGetter.showSnackbar(context, gameError.error, isError: true, height: 100),
          },
        ),
        thisScreenGetter.blocValueListener(
          getter: (state) => state.gameWarning,
          listener: (context, gameWarning) {
            if (gameWarning == null) return;

            thisScreenGetter.showSnackbar(context, gameWarning.warning, isError: false, height: 100);
          },
        ),
        thisScreenGetter.blocValueListener(
          getter: (state) => state.showInviteDialog,
          listener: (context, showInviteDialog) {
            if (showInviteDialog) thisScreenGetter._onInvite(context);
          },
        ),

        // thisScreenGetter.blocValueListener(
        //   getter: (state) => state.mapOrNull(gameOver: (state) => (state.score, state.endGameInfo)),
        //   listener: (context, record) async {
        //     if (record == null) return;
        //     final score = record.$1;
        //     final endGameInfo = record.$2;
        //     if (endGameInfo == null) return;

        //     if (!context.mounted) return;

        //     thisScreenGetter.showManagedDialog(
        //       context,
        //       builder: (context) => EndGameDialog(info: endGameInfo, score: score),
        //       barrierDismissible: false,
        //     );
        //   },
        // ),
      ];
}
