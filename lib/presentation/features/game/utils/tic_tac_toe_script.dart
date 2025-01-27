import 'dart:math';

import 'package:chat_app/domain/entities/game/cell.dart';
import 'package:chat_app/domain/entities/game/cell_id.dart';
import 'package:chat_app/domain/models/game/cell_state.dart';
import 'package:chat_app/presentation/common/mixins/game_validation_mixin.dart';

class TicTacToeScript with GameValidationMixin {
  final CellState scriptRole;
  final CellState opponentRole;

  TicTacToeScript({required this.scriptRole, required this.opponentRole});

  /// Makes a move for the AI player
  (CellId moveCellId, bool isWinningMove) makeMove(
    Map<CellId, Cell?> board,
    int boardAxisLength, [
    double difficulty = 1.0,
  ]) {
    // Random move chance based on difficulty (1 - difficulty)
    if (Random().nextDouble() > difficulty) {
      final emptyCells = board.entries.where((entry) => entry.value == null).map((entry) => entry.key).toList();

      if (emptyCells.isEmpty) throw Exception('No valid moves available');

      final randomCell = emptyCells[Random().nextInt(emptyCells.length)];
      return (randomCell, false);
    }

    // Original strategic logic
    final winningMove = findWinningMove(board, scriptRole, boardAxisLength);
    if (winningMove != null) return (winningMove, true);

    final blockingMove = findWinningMove(board, opponentRole, boardAxisLength);
    if (blockingMove != null) return (blockingMove, false);

    // Block potential fork moves
    final forkBlockingMove = findForkBlockingMove(board);
    if (forkBlockingMove != null) return (forkBlockingMove, false);

    // Take center if available
    if (board[const CellId(0, 0)] == null) return (const CellId(0, 0), false);

    // Take opposite corner if opponent has taken a corner
    final oppositeCornerMove = findOppositeCornerMove(board);
    if (oppositeCornerMove != null) return (oppositeCornerMove, false);

    // Take any available corner
    final corners = [const CellId(-1, -1), const CellId(-1, 1), const CellId(1, -1), const CellId(1, 1)];
    for (final corner in corners) {
      if (board[corner] == null) return (corner, false);
    }

    // Take any available edge
    final edges = [const CellId(0, -1), const CellId(-1, 0), const CellId(1, 0), const CellId(0, 1)];
    for (final edge in edges) {
      if (board[edge] == null) return (edge, false);
    }

    throw Exception('No valid moves available');
  }

  CellId? findWinningMove(Map<CellId, Cell?> board, CellState currPlayerState, int boardAxisLength) {
    final axisSize = (boardAxisLength / 2).floor();
    // Check rows, columns and diagonals
    for (var i = -axisSize; i <= axisSize; i++) {
      for (var j = -axisSize; j <= axisSize; j++) {
        if (board[CellId(i, j)] == null) {
          // Try the move
          board[CellId(i, j)] = Cell(cellId: CellId(i, j), cellState: currPlayerState);
          if (getWinningCellIds(board, currPlayerState, boardAxisLength).isNotEmpty) {
            board[CellId(i, j)] = null;
            return CellId(i, j);
          }
          board[CellId(i, j)] = null;
        }
      }
    }
    return null;
  }

  CellId? findOppositeCornerMove(Map<CellId, Cell?> board) {
    final cornerPairs = {
      const CellId(-1, -1): const CellId(1, 1),
      const CellId(-1, 1): const CellId(1, -1),
      const CellId(1, -1): const CellId(-1, 1),
      const CellId(1, 1): const CellId(-1, -1),
    };

    for (final pair in cornerPairs.entries) {
      if (board[pair.key]?.cellState == opponentRole && board[pair.value] == null) {
        return pair.value;
      }
    }
    return null;
  }

  CellId? findForkBlockingMove(Map<CellId, Cell?> board) {
    // Check if opponent has two corners
    final corners = [const CellId(-1, -1), const CellId(-1, 1), const CellId(1, -1), const CellId(1, 1)];
    final opponentCorners = corners.where((corner) => board[corner]?.cellState == opponentRole).length;

    if (opponentCorners == 2) {
      // If opponent has two corners, take an edge to prevent fork
      final edges = [const CellId(0, -1), const CellId(-1, 0), const CellId(1, 0), const CellId(0, 1)];
      for (final edge in edges) {
        if (board[edge] == null) return edge;
      }
    }

    return null;
  }
}
