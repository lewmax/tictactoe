import 'package:auto_route/auto_route.dart';
import 'package:chat_app/core/di/locator.dart';
import 'package:chat_app/core/utils/extensions/context_extensions.dart';
import 'package:chat_app/domain/entities/game/cell.dart';
import 'package:chat_app/domain/entities/game/cell_id.dart';
import 'package:chat_app/domain/models/game/cell_state.dart';
import 'package:chat_app/presentation/common/bloc/screen_bloc_provider_stateless.dart';
import 'package:chat_app/presentation/common/components/app_outlined_button.dart';
import 'package:chat_app/presentation/common/mixins/snackbar_presenter.dart';
import 'package:chat_app/presentation/features/game/offline_script/bloc/offline_game_bloc.dart';
import 'package:chat_app/presentation/features/game/widgets/players_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class OfflineGamePage extends ScreenBlocProviderStateless<OfflineGameBloc, OfflineGameState> with SnackBarPresenter {
  const OfflineGamePage({super.key});

  @override
  OfflineGameBloc createBloc() => locator.get<OfflineGameBloc>();

  Future<int?> _selectDifficulty(BuildContext context) async {
    final difficulty = ValueNotifier(1);

    return showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Difficulty Level'),
          content: ValueListenableBuilder(
            valueListenable: difficulty,
            builder: (context, value, child) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Slider(
                    value: value.toDouble(),
                    min: 1,
                    max: 10,
                    divisions: 9,
                    label: difficulty.value.toString(),
                    onChanged: (value) => difficulty.value = value.toInt(),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Difficulty: $value',
                    style: context.textStyles.mulish14Bold,
                  ),
                ],
              );
            },
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, difficulty.value),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget buildScreen(BuildContext context, OfflineGameBloc bloc) {
    return MultiBlocListener(
      listeners: [
        blocValueListener(
          getter: (state) => state.mapOrNull(playing: (state) => state.warning),
          listener: (context, gameWarning) {
            if (gameWarning == null) return;

            showSnackbar(context, gameWarning.warning, isError: false, height: 100);
          },
        ),
      ],
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
                getter: (state) => state.mapOrNull(playing: (state) => (state.myUser, state.opponentUser)),
                builder: (context, record) {
                  if (record == null) return const SizedBox.shrink();

                  final (myUser, opponentUser) = record;

                  return PlayersRowWidget(myUser: myUser, friendUser: opponentUser, sidePadding: 18, playersHeight: 32);
                },
              ),
              const SizedBox(height: 6),
              _divider(context),
              _boardWidget(context, bloc),
              const SizedBox(height: 6),
              _newGameButton(context, bloc),
            ],
          ),
        ),
      ),
    );
  }

  Divider _divider(BuildContext context) => Divider(color: context.colors.grey1, height: 0, thickness: 1);

  Widget _boardWidget(BuildContext context, OfflineGameBloc bloc) {
    final size = context.screenWidth;
    const betweenItemsPadding = 6.0;
    final cellSize = size / bloc.boardAxisLength - betweenItemsPadding * 2;

    return blocBuilder(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox.shrink(),
          playing: (state) => SizedBox(
            width: size,
            height: size,
            child: Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              runSpacing: betweenItemsPadding,
              spacing: betweenItemsPadding,
              children: state.board.entries
                  .map(
                    (entry) => SizedBox(
                      width: cellSize,
                      height: cellSize,
                      child: _cell(context, entry, state.myUser.isMyNextTurn),
                    ),
                  )
                  .toList(),
            ),
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
        onTap:
            isMyTurn && entry.value == null ? () => blocOf(context).add(OfflineGameEvent.cellTapped(entry.key)) : null,
        child: entry.value == null ? null : _cellValue(entry.value!),
      ),
    );
  }

  Widget _cellValue(Cell cell) {
    return switch (cell.cellState) {
      CellState.owner => const Center(child: Icon(Icons.close, size: 84)),
      CellState.opponent => const Center(child: Icon(Icons.circle_outlined, size: 84)),
    };
  }

  Widget _newGameButton(BuildContext context, OfflineGameBloc bloc) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: blocValueBuilder(
        getter: (state) => state is Initial,
        builder: (context, isInitial) {
          return AppOutlinedButton.text(
            title: isInitial ? 'Start Game' : 'New Game',
            isContentCentered: true,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            style: context.textStyles.mulish14Bold.copyWith(color: context.colors.accentColor),
            onTap: () async {
              if (bloc.difficulty == null) {
                final difficulty = await _selectDifficulty(context);
                if (difficulty != null) bloc.add(OfflineGameEvent.started(difficultyLevel: difficulty));
              } else {
                bloc.add(const OfflineGameEvent.started(difficultyLevel: null));
              }
            },
          );
        },
      ),
    );
  }
}
