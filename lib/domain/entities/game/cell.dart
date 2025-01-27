import 'package:chat_app/domain/entities/game/cell_id.dart';
import 'package:chat_app/domain/entities/user/user.dart';
import 'package:chat_app/domain/models/game/cell_state.dart';
import 'package:equatable/equatable.dart';

class Cell extends Equatable {
  final CellId cellId;
  final CellState cellState;

  const Cell({required this.cellId, required this.cellState});

  @override
  List<Object?> get props => [cellId, cellState];

  // bool get isMine => cellState == CellState.mine;

  Cell copyWith({CellState? cellState}) {
    return Cell(
      cellId: cellId,
      cellState: cellState ?? this.cellState,
    );
  }
}

class WinnerCell extends Cell {
  final UserId winnerId;

  const WinnerCell({required super.cellId, required super.cellState, required this.winnerId});

  @override
  List<Object?> get props => [cellId, cellState, winnerId];

  // bool get isMine => cellState == CellState.mine;

  @override
  WinnerCell copyWith({CellState? cellState, UserId? playerId, UserId? winnerId}) {
    return WinnerCell(
      cellId: cellId,
      cellState: cellState ?? this.cellState,
      winnerId: winnerId ?? this.winnerId,
    );
  }
}
