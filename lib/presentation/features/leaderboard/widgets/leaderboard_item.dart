import 'package:chat_app/core/utils/extensions/context_extensions.dart';
import 'package:chat_app/domain/entities/leaderboard/leaderboard_user.dart';
import 'package:chat_app/presentation/common/components/circle_user_image.dart';
import 'package:flutter/material.dart';

class LeaderboardItem extends StatelessWidget {
  final int i;
  final LeaderboardUser user;

  const LeaderboardItem(this.i, this.user);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          const SizedBox(width: 12),
          Container(alignment: Alignment.center, width: 20, child: Text((i + 1).toString(), style: context.textStyles.mulish16)),
          const SizedBox(width: 24),
          Expanded(
            child: Row(
              children: [
                CirleUserImage.network(image: user.imageUrl),
                const SizedBox(width: 6),
                Expanded(child: Text(user.name, overflow: TextOverflow.ellipsis, style: context.textStyles.mulish16)),
              ],
            ),
          ),
          const SizedBox(width: 6),
          SizedBox(width: 52, child: Center(child: Text(user.wins.toString(), style: context.textStyles.mulish16))),
          SizedBox(width: 52, child: Center(child: Text(user.losses.toString(), style: context.textStyles.mulish16))),
          SizedBox(
            width: 52,
            child: Center(child: Text('${(user.winRate * 100).round()}%', style: context.textStyles.mulish16)),
          ),
        ],
      ),
    );
  }
}
