part of '../home_page.dart';

mixin HomePageMixin on BlocedState<HomePage, HomeBloc, HomeState> {
  _HomePageState get thisScreenGetter;

  List<BlocListenerBase> listeners() => [
        blocValueListener(
          getter: (state) => state.error,
          listener: (_, error) {
            if (error == null) return;

            thisScreenGetter.showSnackbar(context, error, height: 100, isError: true);
          },
        ),
        blocValueListener(
          getter: (state) => state.mapOrNull(user: (state) => state.gameToOpen),
          listener: (_, gameToOpen) {
            if (gameToOpen == null) return;
            thisScreenGetter._validateNavigationToGamePage(context, gameId: gameToOpen, isFromMatchingScreen: false);
          },
        ),
      ];
}
