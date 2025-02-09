import 'dart:math';

import 'package:chat_app/core/utils/mixins/board_size_mixin.dart';
import 'package:chat_app/domain/entities/game/cell.dart';
import 'package:chat_app/domain/entities/game/cell_id.dart';
import 'package:chat_app/domain/entities/game/game_user.dart';
import 'package:chat_app/domain/entities/user/user.dart';
import 'package:chat_app/domain/models/game/cell_state.dart';
import 'package:chat_app/domain/models/game/game_warning.dart';
import 'package:chat_app/presentation/common/mixins/game_validation_mixin.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'offline_multiplayer_bloc.freezed.dart';
part 'offline_multiplayer_event.dart';
part 'offline_multiplayer_state.dart';

@Injectable()
class OfflineMultiplayerBloc extends Bloc<OfflineMultiplayerEvent, OfflineMultiplayerState>
    with BoardSizeMixin, GameValidationMixin {
  OfflineMultiplayerBloc() : super(const OfflineMultiplayerState.initial()) {
    on<OfflineMultiplayerEvent>(
      (event, emit) async => event.map(
        started: (_) => _onStarted(emit),
        cellTapped: (e) => _onCellTapped(e, emit),
      ),
    );
    add(const OfflineMultiplayerEvent.started());
  }

  final myRole = CellState.owner;
  final opponentRole = CellState.opponent;

  Future<void> _onStarted(Emitter<OfflineMultiplayerState> emit) async {
    // Randomly decide who goes first
    final isMyUserFirst = Random().nextBool();
    final board = generateEmptyBoard(boardAxisLength);

    final previousResult = state.mapOrNull(playing: (state) => state.result);

    emit(
      OfflineMultiplayerState.playing(
        board: board,
        myUser: _createEmptyUser('X Player', isMyUserFirst),
        opponentUser: _createEmptyUser('O Player', !isMyUserFirst),
        isGameOver: false,
        winner: null,
        result: previousResult ?? const Result(player1Wins: 0, player2Wins: 0),
      ),
    );
  }

  void _onCellTapped(_CellTapped event, Emitter<OfflineMultiplayerState> emit) {
    state.mapOrNull(
      playing: (state) {
        if (state.isGameOver || state.board[event.cellId] != null) return;

        final newCellState = state.myUser.isMyNextTurn ? CellState.owner : CellState.opponent;

        // Make player move
        final newBoard = Map.of(state.board);
        newBoard[event.cellId] = Cell(cellId: event.cellId, cellState: newCellState);

        // Check if player won
        if (getWinningCellIds(newBoard, newCellState, boardAxisLength) case final winningCellIds
            when winningCellIds.isNotEmpty) {
          for (final cellId in winningCellIds) {
            newBoard[cellId] = WinnerCell(cellId: cellId, cellState: newCellState, winnerId: state.myUser.id);
          }
          return emit(
            state.copyWith(
              board: newBoard,
              isGameOver: true,
              winner: myRole,
              warning: GameWarningFinishedSuccess(
                winner: state.myUser.isMyNextTurn ? state.myUser.name : state.opponentUser.name,
              ),
              result: state.result.copyWith(
                player1Wins: state.myUser.isMyNextTurn ? state.result.player1Wins + 1 : state.result.player1Wins,
                player2Wins: state.myUser.isMyNextTurn ? state.result.player2Wins : state.result.player2Wins + 1,
              ),
            ),
          );
        }

        // Check for draw
        if (isBoardFull(newBoard, boardAxisLength)) {
          return emit(
            state.copyWith(board: newBoard, isGameOver: true, winner: null, warning: const GameWarningFinishedDraw()),
          );
        }

        // Continue game
        emit(
          state.copyWith(
            board: newBoard,
            myUser: state.myUser.copyWith(isMyNextTurn: !state.myUser.isMyNextTurn),
            opponentUser: state.opponentUser.copyWith(isMyNextTurn: !state.opponentUser.isMyNextTurn),
          ),
        );
      },
    );
  }
}

extension on OfflineMultiplayerBloc {
  GameUser _createEmptyUser(String name, bool isMyNextTurn) => GameUser(
        id: UserId(rawValue: name),
        name: name,
        imageUrl: null,
        isOwner: false,
        isMyNextTurn: isMyNextTurn,
      );
}
