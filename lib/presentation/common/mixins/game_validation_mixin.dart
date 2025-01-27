import 'package:chat_app/domain/entities/game/cell.dart';
import 'package:chat_app/domain/entities/game/cell_id.dart';
import 'package:chat_app/domain/models/game/cell_state.dart';

mixin GameValidationMixin {
  bool isBoardFull(Map<CellId, Cell?> board, int boardAxisLength) {
    return board.values.where((cell) => cell != null).length == boardAxisLength * boardAxisLength;
  }

  List<CellId> getWinningCellIds(Map<CellId, Cell?> board, CellState currPlayerState, int boardAxisLength) {
    final halfBoardAxisLength = (boardAxisLength / 2).floor();
    // Check rows
    for (var i = -halfBoardAxisLength; i <= halfBoardAxisLength; i++) {
      final rowCells = board.entries.where((entry) => entry.value?.cellId.y == i).map((e) => e.key).toList();
      if (rowCells.length == boardAxisLength &&
          rowCells.every((cellId) => board[cellId]?.cellState == currPlayerState)) {
        return rowCells;
      }
    }

    // Check columns
    for (var i = -halfBoardAxisLength; i <= halfBoardAxisLength; i++) {
      final colCells = board.entries.where((entry) => entry.value?.cellId.x == i).map((e) => e.key).toList();
      if (colCells.length == boardAxisLength &&
          colCells.every((cellId) => board[cellId]?.cellState == currPlayerState)) {
        return colCells;
      }
    }

    // Check diagonals
    final diagonal1 =
        List.generate(boardAxisLength, (index) => CellId(-halfBoardAxisLength + index, -halfBoardAxisLength + index));
    if (diagonal1.every((cellId) => board[cellId]?.cellState == currPlayerState)) return diagonal1;

    final diagonal2 =
        List.generate(boardAxisLength, (index) => CellId(-halfBoardAxisLength + index, halfBoardAxisLength - index));
    if (diagonal2.every((cellId) => board[cellId]?.cellState == currPlayerState)) return diagonal2;

    return [];
  }
}
