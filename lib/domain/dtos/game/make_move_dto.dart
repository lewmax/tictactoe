import 'package:chat_app/domain/entities/game/cell.dart';
import 'package:chat_app/domain/entities/game/cell_id.dart';
import 'package:chat_app/domain/entities/game/game.dart';
import 'package:chat_app/domain/entities/user/user.dart';
import 'package:chat_app/domain/models/game/game_status.dart';

sealed class MakeMoveDto {
  final GameId gameId;
  final Map<CellId, Cell?> boardMap;
  final GameStatus gameStatus;

  const MakeMoveDto({required this.gameId, required this.boardMap, required this.gameStatus});
}

class MakeMoveGeneralDto extends MakeMoveDto {
  const MakeMoveGeneralDto({required super.gameId, required super.boardMap, required bool isOwnerTurn})
      : super(gameStatus: isOwnerTurn ? GameStatus.ownerTurn : GameStatus.teamateTurn);
}

class MakeMoveFinishDto extends MakeMoveDto {
  const MakeMoveFinishDto({
    required super.gameId,
    required super.boardMap,
    required this.endedAt,
    required this.winnerId,
  }) : super(gameStatus: GameStatus.finished);

  final DateTime endedAt;
  final UserId? winnerId;
}
