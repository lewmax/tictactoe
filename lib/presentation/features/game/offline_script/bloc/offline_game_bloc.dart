import 'dart:math';

import 'package:chat_app/core/utils/mixins/board_size_mixin.dart';
import 'package:chat_app/domain/entities/game/cell.dart';
import 'package:chat_app/domain/entities/game/cell_id.dart';
import 'package:chat_app/domain/entities/game/game_user.dart';
import 'package:chat_app/domain/entities/user/user.dart';
import 'package:chat_app/domain/models/game/cell_state.dart';
import 'package:chat_app/domain/models/game/game_warning.dart';
import 'package:chat_app/domain/repositories/auth/auth_repo.dart';
import 'package:chat_app/presentation/common/mixins/game_validation_mixin.dart';
import 'package:chat_app/presentation/features/game/utils/tic_tac_toe_script.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:useful_extensions/useful_extensions.dart';

part 'offline_game_bloc.freezed.dart';
part 'offline_game_event.dart';
part 'offline_game_state.dart';

@Injectable()
class OfflineGameBloc extends Bloc<OfflineGameEvent, OfflineGameState> with BoardSizeMixin, GameValidationMixin {
  OfflineGameBloc(this._authRepo) : super(const OfflineGameState.initial()) {
    on<OfflineGameEvent>(
      (event, emit) async => event.map(
        started: (event) => _onStarted(event, emit),
        cellTapped: (e) => _onCellTapped(e, emit),
      ),
    );
  }

  final AuthRepo _authRepo;

  final myRole = CellState.owner;
  final opponentRole = CellState.opponent;
  late final _script = TicTacToeScript(scriptRole: opponentRole, opponentRole: myRole);
  double? difficulty;

  Future<void> _onStarted(_Started event, Emitter<OfflineGameState> emit) async {
    if (event.difficultyLevel != null) difficulty = event.difficultyLevel! / 10;
    if (difficulty == null) return;

    // Randomly decide who goes first
    final isPlayerFirst = Random().nextBool();
    final board = generateEmptyBoard(boardAxisLength);

    // If AI goes first, make its move
    if (!isPlayerFirst) {
      final (cellId, _) = _script.makeMove(board, boardAxisLength, difficulty!);
      board[cellId] = Cell(cellId: cellId, cellState: CellState.opponent);
    }

    emit(
      OfflineGameState.playing(
        board: board,
        myUser: _authRepo.user?.let((user) => GameUser.fromUser(user, true, true)) ?? _createEmptyUser('Me', true),
        opponentUser: _createEmptyUser('Script Opponent', false),
        isGameOver: false,
        winner: null,
      ),
    );
  }

  void _onCellTapped(_CellTapped event, Emitter<OfflineGameState> emit) {
    if (difficulty == null) return;
    state.mapOrNull(
      playing: (state) {
        if (state.isGameOver || state.board[event.cellId] != null) return;

        // Make player move
        final newBoard = Map.of(state.board);
        newBoard[event.cellId] = Cell(cellId: event.cellId, cellState: CellState.owner);

        // Check if player won
        if (getWinningCellIds(newBoard, CellState.owner, boardAxisLength) case final winningCellIds
            when winningCellIds.isNotEmpty) {
          for (final cellId in winningCellIds) {
            newBoard[cellId] = WinnerCell(cellId: cellId, cellState: CellState.owner, winnerId: state.myUser.id);
          }
          return emit(
            state.copyWith(
              board: newBoard,
              isGameOver: true,
              winner: myRole,
              warning: const GameWarningFinishedSuccess(),
            ),
          );
        }

        // Check for draw
        if (isBoardFull(newBoard, boardAxisLength)) {
          return emit(
            state.copyWith(board: newBoard, isGameOver: true, winner: null, warning: const GameWarningFinishedDraw()),
          );
        }

        // Make AI move
        final (cellId, isWinningMove) = _script.makeMove(newBoard, boardAxisLength, difficulty!);
        newBoard[cellId] = Cell(cellId: cellId, cellState: CellState.opponent);

        // Check if AI won
        if (isWinningMove) {
          final winningCellIds = getWinningCellIds(newBoard, opponentRole, boardAxisLength);
          for (final cellId in winningCellIds) {
            newBoard[cellId] =
                WinnerCell(cellId: cellId, cellState: CellState.opponent, winnerId: state.opponentUser.id);
          }
          return emit(
            state.copyWith(
              board: newBoard,
              isGameOver: true,
              winner: opponentRole,
              warning: const GameWarningFinishedFail(),
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
            myUser: state.myUser.copyWith(isMyNextTurn: true),
            opponentUser: state.opponentUser.copyWith(isMyNextTurn: false),
            isGameOver: false,
            winner: null,
          ),
        );
      },
    );
  }
}

extension on OfflineGameBloc {
  GameUser _createEmptyUser(String name, bool isMyNextTurn) => GameUser(
        id: const UserId(rawValue: ''),
        name: name,
        imageUrl: null,
        isOwner: false,
        isMyNextTurn: isMyNextTurn,
      );
}
