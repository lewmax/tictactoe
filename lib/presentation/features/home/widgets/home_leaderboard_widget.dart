// ignore_for_file: avoid_redundant_argument_values
import 'package:chat_app/core/utils/extensions/context_extensions.dart';
import 'package:chat_app/domain/entities/leaderboard/leaderboard_user.dart';
import 'package:chat_app/presentation/common/components/circle_user_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class HomeLeaderboardWidget extends StatelessWidget {
  final Function() onTap;
  final List<LeaderboardUser> topPlayers;

  const HomeLeaderboardWidget({super.key, required this.onTap, required this.topPlayers});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ColoredBox(
        color: Colors.white,
        child: Column(
          children: [
            Divider(height: 0, thickness: 1, color: context.colors.grey4),
            const SizedBox(height: 12),
            Text(context.l10n.home_todaysLeaderboard, style: context.textStyles.mulish18),
            if (topPlayers.isEmpty)
              _youCouldBeHere(context)
            else
              ...topPlayers.mapIndexed((i, user) => _topPlayer(context, i, user)),
            Row(
              children: [
                const Spacer(flex: 6),
                Material(
                  color: Colors.white,
                  child: InkWell(
                    onTap: onTap,
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child:
                          Text('See all', style: context.textStyles.mulish14Bold.copyWith(color: context.colors.blue)),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 8),
            Divider(height: 0, thickness: 1, color: context.colors.grey4),
          ],
        ),
      ),
    );
  }

  Widget _topPlayer(BuildContext context, int i, LeaderboardUser user) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 18),
      child: Row(
        children: [
          const SizedBox(width: 12),
          Center(child: Text((i + 1).toString(), style: context.textStyles.mulish16Bold)),
          const SizedBox(width: 12),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CirleUserImage.network(image: user.imageUrl, radius: 14, name: user.name),
                const SizedBox(width: 6),
                Expanded(child: Text(user.name, style: context.textStyles.mulish16, overflow: TextOverflow.ellipsis)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Center(child: FittedBox(child: Text('${user.wins} wins', style: context.textStyles.mulish16))),
          ),
        ],
      ),
    );
  }

  Widget _youCouldBeHere(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 32),
        child: Text('You could be here 🏆', style: context.textStyles.mulish16),
      );
}
