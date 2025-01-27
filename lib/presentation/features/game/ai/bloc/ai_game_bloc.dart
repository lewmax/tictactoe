import 'dart:math';

import 'package:chat_app/core/utils/mixins/board_size_mixin.dart';
import 'package:chat_app/domain/entities/game/cell.dart';
import 'package:chat_app/domain/entities/game/cell_id.dart';
import 'package:chat_app/domain/entities/game/game_user.dart';
import 'package:chat_app/domain/entities/user/user.dart';
import 'package:chat_app/domain/models/game/cell_state.dart';
import 'package:chat_app/domain/models/game/game_warning.dart';
import 'package:chat_app/domain/repositories/auth/auth_repo.dart';
import 'package:chat_app/domain/services/ai_game_service.dart';
import 'package:chat_app/presentation/common/mixins/game_validation_mixin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:useful_extensions/useful_extensions.dart';

part 'ai_game_bloc.freezed.dart';
part 'ai_game_event.dart';
part 'ai_game_state.dart';

@Injectable()
class AiGameBloc extends Bloc<AiGameEvent, AiGameState> with BoardSizeMixin, GameValidationMixin {
  final AiGameService _aiService;
  final AuthRepo _authRepo;

  final myRole = CellState.owner;
  final opponentRole = CellState.opponent;

  AiGameBloc(this._aiService, this._authRepo) : super(const AiGameState.loading()) {
    on<AiGameEvent>(
      (event, emit) => event.map(
        started: (event) => _onStarted(event, emit),
        cellTapped: (event) => _onCellTapped(event, emit),
      ),
    );

    add(const AiGameEvent.started());
  }

  Future<void> _onStarted(_Started event, Emitter<AiGameState> emit) async {
    emit(const AiGameState.loading());

    // Randomly decide who goes first
    final isPlayerFirst = Random().nextBool();
    final board = generateEmptyBoard(boardAxisLength);

    // If AI goes first, make its move
    if (!isPlayerFirst) {
      final cellId = await _aiService.getAiMove(board.map((key, value) => MapEntry(key, value?.cellState)));
      if (cellId == null) return;
      board[cellId] = Cell(cellId: cellId, cellState: CellState.opponent);
    }

    emit(
      AiGameState.playing(
        board: board,
        myUser: _authRepo.user?.let((user) => GameUser.fromUser(user, true, true)) ?? _createEmptyUser('Me', true),
        opponentUser: _createEmptyUser('Opponent', false),
        isGameOver: false,
        winner: null,
      ),
    );
  }

  Future<void> _onCellTapped(_CellTapped event, Emitter<AiGameState> emit) async {
    await state.mapOrNull(
      playing: (state) async {
        final initialStateCopy = state.copyWith();
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

        // AI move
        final aiMove = await _aiService.getAiMove(newBoard.map((key, value) => MapEntry(key, value?.cellState)));
        if (aiMove == null) return emit(initialStateCopy.copyWith(error: 'AI move failed'));

        newBoard[aiMove] = Cell(cellId: aiMove, cellState: CellState.opponent);

        final winningCellIds = getWinningCellIds(newBoard, opponentRole, boardAxisLength);

        // Check if AI won
        if (winningCellIds.isNotEmpty) {
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

extension on AiGameBloc {
  GameUser _createEmptyUser(String name, bool isMyNextTurn) =>
      GameUser(id: const UserId(rawValue: ''), name: name, imageUrl: null, isOwner: false, isMyNextTurn: isMyNextTurn);
}
