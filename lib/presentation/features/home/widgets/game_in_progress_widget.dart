import 'package:auto_route/auto_route.dart';
import 'package:chat_app/core/utils/extensions/context_extensions.dart';
import 'package:chat_app/domain/entities/game/game.dart';
import 'package:chat_app/presentation/common/components/circle_user_image.dart';
import 'package:chat_app/presentation/common/navigation/app_router.dart';
import 'package:chat_app/presentation/common/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:useful_extensions/useful_extensions.dart';

class GameInProgressWidget extends StatelessWidget {
  final Game game;

  const GameInProgressWidget({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 6, 0, 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 4,
                child: Text(context.l10n.home_columnNameTurn, style: inter16Bold),
              ),
              Expanded(
                flex: 6,
                child: Text(context.l10n.home_columnNamePlayers, style: inter16Bold),
              ),
              Expanded(
                flex: 4,
                child: Center(
                  child: FittedBox(
                    child: Text(context.l10n.home_columnNameRejoinGame, style: inter16Bold),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          game.myUser.let(
            (myUser) => Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(myUser.id == game.currentUserTurn?.id ? 'Yours' : '', style: mulish16),
                ),
                Expanded(
                  flex: 5,
                  child: Row(
                    children: [
                      CirleUserImage.network(image: myUser.imageUrl, name: myUser.name, radius: 14),
                      const SizedBox(width: 10),
                      Expanded(child: Text(myUser.name, style: mulish16, overflow: TextOverflow.ellipsis)),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Center(
                    child: GestureDetector(
                      onTap: () => context.router.push(GameRoute(gameId: game.id)),
                      child: Text(context.l10n.home_rejoinBtn, style: mulish16Bold.copyWith(color: AppColors.blue)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          game.teammateUser?.let(
                (teammateUser) => Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        teammateUser.id == game.currentUserTurn?.id ? 'Theirs' : '',
                        style: mulish16,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Row(
                        children: [
                          CirleUserImage.network(image: teammateUser.imageUrl, name: teammateUser.imageUrl, radius: 14),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              teammateUser.name,
                              style: mulish16,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(flex: 4, child: Center()),
                  ],
                ),
              ) ??
              Text(context.l10n.home_didntJoinYet, style: mulish16),
        ],
      ),
    );
  }
}
