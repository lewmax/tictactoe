import 'package:chat_app/core/utils/extensions/context_extensions.dart';
import 'package:chat_app/domain/entities/game/game.dart';
import 'package:chat_app/domain/entities/game/game_user.dart';
import 'package:chat_app/domain/models/game/game_status.dart';
import 'package:chat_app/presentation/common/components/circle_user_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:useful_extensions/useful_extensions.dart';

class RecentGameWidget extends StatelessWidget {
  final Game game;

  const RecentGameWidget({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 6, 14, 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 4,
                child: Text(context.l10n.home_columnNameDate, style: context.textStyles.mulish16Bold),
              ),
              Expanded(
                flex: 6,
                child: Text(context.l10n.home_columnNamePlayers, style: context.textStyles.mulish16Bold),
              ),
              Expanded(
                flex: 4,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(context.l10n.home_columnNameWinner, style: context.textStyles.mulish16Bold),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          game.myUser.let(
            (myUser) => Row(
              children: [
                Expanded(flex: 3, child: _finishTime(context)),
                Expanded(
                  flex: 5,
                  child: Row(
                    children: [
                      CirleUserImage.network(image: myUser.imageUrl, name: myUser.name, radius: 14),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(myUser.name, style: context.textStyles.mulish16, overflow: TextOverflow.ellipsis),
                      ),
                    ],
                  ),
                ),
                Expanded(flex: 4, child: _playerStatus(myUser)),
              ],
            ),
          ),
          const SizedBox(height: 12),
          game.teammateUser?.let(
                (teammateUser) => Row(
                  children: [
                    Expanded(flex: 3, child: _finishTime(context)),
                    Expanded(
                      flex: 5,
                      child: Row(
                        children: [
                          CirleUserImage.network(image: teammateUser.imageUrl, name: teammateUser.imageUrl, radius: 14),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              teammateUser.name,
                              style: context.textStyles.mulish16,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(flex: 4, child: _playerStatus(teammateUser)),
                  ],
                ),
              ) ??
              const SizedBox(),
        ],
      ),
    );
  }

  Widget _playerStatus(GameUser user) {
    return Align(
      alignment: Alignment.centerRight,
      child: game.gameStatus == GameStatus.userTerminated
          ? const Text('Terminated')
          : game.isDraw
              ? const Text('Draw!')
              : game.winnerId == user.id
                  ? const Text('Winner')
                  : const Text('Loser'),
    );
  }

  Text _finishTime(BuildContext context) =>
      Text(game.endedAt?.let((date) => DateFormat('dd/MM/yy').format(date)) ?? '', style: context.textStyles.mulish16);
}
