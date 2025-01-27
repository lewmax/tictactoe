import 'package:chat_app/domain/entities/game/cell.dart';
import 'package:chat_app/domain/entities/game/cell_id.dart';

mixin BoardSizeMixin {
  int get boardAxisLength => 3;

  Map<CellId, Cell?> generateEmptyBoard(int axisLength) {
    final axisSize = (axisLength / 2).floor();
    final Map<CellId, Cell?> map = {};

    for (int y = axisSize; y >= -axisSize; y--) {
      for (int x = -axisSize; x <= axisSize; x++) {
        final id = CellId(x, y);
        map[id] = null;
      }
    }

    return map;
  }

  Map<CellId, Cell?> generateFullBoard(Map<CellId, Cell> board) {
    final fullBoard = generateEmptyBoard(boardAxisLength);

    fullBoard.addAll(board);

    return fullBoard;
  }
}
