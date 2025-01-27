import 'package:chat_app/domain/common/model_id.dart';
import 'package:chat_app/domain/entities/game/cell.dart';
import 'package:chat_app/domain/entities/game/cell_id.dart';
import 'package:chat_app/domain/entities/game/game_user.dart';
import 'package:chat_app/domain/entities/user/user.dart';
import 'package:chat_app/domain/models/game/game_status.dart';
import 'package:equatable/equatable.dart';

typedef GameId = ModelId<Game, String>;

class Game extends Equatable {
  final GameId id;
  final String url;
  final DateTime createdAt;
  final DateTime? endedAt;
  final GameUser myUser;
  final GameUser? teammateUser;
  final GameStatus gameStatus;
  final UserId? winnerId;
  final Map<CellId, Cell?> boardMap;

  const Game({
    required this.id,
    required this.url,
    required this.createdAt,
    required this.endedAt,
    required this.myUser,
    required this.teammateUser,
    required this.gameStatus,
    required this.boardMap,
    required this.winnerId,
  });

  bool get isMyUserOwner => myUser.isOwner;

  GameUser get owner => myUser.isOwner ? myUser : teammateUser!;

  bool get isDraw => gameStatus == GameStatus.finished && winnerId == null;

  GameUser? get currentUserTurn => switch (gameStatus) {
        GameStatus.unknown || GameStatus.userTerminated || GameStatus.finished => null,
        GameStatus.notStarted || GameStatus.teamateJoined || GameStatus.ownerTurn => owner,
        GameStatus.teamateTurn => owner.id == myUser.id ? teammateUser : myUser,
      };

  @override
  List<Object?> get props => [
        id,
        url,
        createdAt,
        endedAt,
        myUser,
        teammateUser,
        gameStatus,
        boardMap,
        winnerId,
      ];
}
