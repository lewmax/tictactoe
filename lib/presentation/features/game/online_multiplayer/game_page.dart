import 'package:auto_route/auto_route.dart';
import 'package:chat_app/core/di/locator.dart';
import 'package:chat_app/core/utils/extensions/context_extensions.dart';
import 'package:chat_app/domain/entities/game/cell.dart';
import 'package:chat_app/domain/entities/game/cell_id.dart';
import 'package:chat_app/domain/entities/game/game.dart';
import 'package:chat_app/domain/models/game/cell_state.dart';
import 'package:chat_app/domain/models/game/game_error.dart';
import 'package:chat_app/presentation/common/bloc/screen_bloc_provider_stateless.dart';
import 'package:chat_app/presentation/common/mixins/snackbar_presenter.dart';
import 'package:chat_app/presentation/features/game/online_multiplayer/bloc/game_bloc.dart';
import 'package:chat_app/presentation/features/game/widgets/end_game_popup.dart';
import 'package:chat_app/presentation/features/game/widgets/invite_dialog.dart';
import 'package:chat_app/presentation/features/game/widgets/players_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bloc/bloc_listeners.dart';

@RoutePage()
class GamePage extends ScreenBlocProviderStateless<GameBloc, GameState> with SnackBarPresenter, GamePageMixin {
  final GameId? gameId;

  const GamePage({this.gameId});

  @override
  GameBloc createBloc() => locator.get<GameBloc>(param1: gameId);

  @override
  GamePage get thisScreenGetter => this;

  Future<void> _onInvite(BuildContext context) async {
    final gameUrl = blocOf(context).gameUrl;
    if (gameUrl == null) return;

    await showDialog(context: context, builder: (context) => InviteDialog(code: gameUrl));
  }

  @override
  Widget buildScreen(BuildContext context, GameBloc bloc) {
    return MultiBlocListener(
      listeners: listeners(),
      child: PopScope(
        onPopInvokedWithResult: (_, __) => ScaffoldMessenger.of(context).clearSnackBars(),
        child: Scaffold(
          backgroundColor: context.colors.whiteBg,
          appBar: AppBar(
            title: context.icons.ticTacToe.image(width: 65),
            centerTitle: true,
            backgroundColor: context.colors.whiteBg,
            foregroundColor: Colors.black,
          ),
          body: Column(
            children: [
              _divider(context),
              const SizedBox(height: 8),
              blocValueBuilder(
                getter: (state) => (state.myUser, state.teammateUser),
                builder: (context, record) {
                  final myUser = record.$1;
                  final teammateUser = record.$2;

                  return PlayersRowWidget(
                    myUser: myUser,
                    friendUser: teammateUser,
                    onInvite: () => _onInvite(context),
                    sidePadding: 18,
                    playersHeight: 32,
                  );
                },
              ),
              const SizedBox(height: 6),
              _divider(context),
              _boardWidget(context),
              const SizedBox(height: 6),
              _terminateBtn(),
            ],
          ),
        ),
      ),
    );
  }

  Divider _divider(BuildContext context) => Divider(color: context.colors.grey1, height: 0, thickness: 1);

  Widget _boardWidget(BuildContext context) {
    final size = context.screenWidth;
    const betweenItemsPadding = 6.0;
    final cellSize = size / 3 - betweenItemsPadding * 2;

    return blocValueBuilder(
      getter: (state) => (state.board, state is GameStateMyTurn && state.teammateUser != null),
      builder: (context, record) {
        final board = record.$1;
        final isMyTurn = record.$2;

        return SizedBox(
          width: size,
          height: size,
          child: Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: betweenItemsPadding,
            spacing: betweenItemsPadding,
            children: board.entries
                .map((entry) => SizedBox(width: cellSize, height: cellSize, child: _cell(context, entry, isMyTurn)))
                .toList(),
          ),
        );
      },
    );
  }

  Widget _cell(BuildContext context, MapEntry<CellId, Cell?> entry, bool isMyTurn) {
    final color = switch (entry.value) {
      null => context.colors.grey,
      WinnerCell() => context.colors.green,
      Cell() => context.colors.grey,
    };
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        hoverColor: color,
        borderRadius: BorderRadius.circular(10),
        onTap: isMyTurn && entry.value == null ? () => blocOf(context).add(GameEvent.makeMove(entry.key)) : null,
        child: entry.value == null ? null : _cellValue(entry.value!),
      ),
    );
  }

  Widget _cellValue(Cell cell) {
    return switch (cell.cellState) {
      CellState.owner => const Center(child: Text('X', style: TextStyle(fontSize: 84), textAlign: TextAlign.center)),
      CellState.opponent => const Center(child: Text('O', style: TextStyle(fontSize: 84), textAlign: TextAlign.center)),
    };
  }

  Widget _terminateBtn() {
    return blocValueBuilder(
      getter: (state) => state.maybeMap(gameDiscontinued: (_) => false, gameOver: (_) => false, orElse: () => true),
      builder: (context, showTerminateGame) => showTerminateGame
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: EndGameButton(
                onTap: () => blocOf(context).add(const GameEvent.terminateGame()),
                title: 'End game',
              ),
            )
          : const SizedBox(),
    );
  }
}
