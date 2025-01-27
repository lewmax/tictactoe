import 'dart:math';

import 'package:chat_app/core/utils/logger.dart';
import 'package:chat_app/domain/entities/game/cell_id.dart';
import 'package:chat_app/domain/models/game/cell_state.dart';
import 'package:injectable/injectable.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

abstract class AiGameService {
  Future<CellId?> getAiMove(Map<CellId, CellState?> board);
}

@LazySingleton(as: AiGameService)
class AiGameServiceImpl implements AiGameService {
  late final Interpreter _interpreter;
  final _random = Random();

  @FactoryMethod(preResolve: true)
  AiGameServiceImpl._();

  @FactoryMethod(preResolve: true)
  static Future<AiGameServiceImpl> start() async {
    final instance = AiGameServiceImpl._();
    instance._interpreter = await Interpreter.fromAsset('assets/tflite/tic_tac_toe_model.tflite');
    return instance;
  }

  @override
  Future<CellId?> getAiMove(Map<CellId, CellState?> board) async {
    try {
      // Convert board to input format for model
      final input = _convertBoardToInput(board);

      // Prepare output tensor with correct shape
      final output = List<List<double>>.filled(1, List<double>.filled(9, 0));

      // Allocate tensors before running inference
      _interpreter.allocateTensors();

      // Run inference
      _interpreter.run(input, output);

      // Get valid moves
      final validMoves = board.entries.where((entry) => entry.value == null).map((e) => e.key).toList();

      if (validMoves.isEmpty) return null;

      // Convert output probabilities to move selection
      final flatOutput = output[0];
      final moves = List.generate(9, (i) => MapEntry(i, flatOutput[i]));
      moves.sort((a, b) => b.value.compareTo(a.value));

      // Select best valid move
      for (final move in moves) {
        final cellId = _indexToCellId(move.key);
        if (validMoves.contains(cellId)) {
          return cellId;
        }
      }

      // Fallback to random move if something goes wrong
      return validMoves[_random.nextInt(validMoves.length)];
    } catch (e) {
      logDebug('AI move error: $e');
      // Fallback to random move on error
      final validMoves = board.entries.where((entry) => entry.value == null).map((e) => e.key).toList();
      if (validMoves.isEmpty) return null;
      return validMoves[_random.nextInt(validMoves.length)];
    }
  }

  List<List<List<double>>> _convertBoardToInput(Map<CellId, CellState?> board) {
    final input = List.generate(
      1,
      (_) => List.generate(
        3,
        (i) => List.generate(
          3,
          (j) {
            final cellId = CellId(i - 1, j - 1);
            final cell = board[cellId];
            if (cell == null) return 0.0;
            return cell == CellState.owner ? 1.0 : -1.0;
          },
        ),
      ),
    );
    return input;
  }

  CellId _indexToCellId(int index) {
    final row = (index ~/ 3) - 1;
    final col = (index % 3) - 1;
    return CellId(row, col);
  }

  void dispose() {
    _interpreter.close();
  }
}
