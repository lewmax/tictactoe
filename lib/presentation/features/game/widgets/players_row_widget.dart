import 'package:chat_app/domain/entities/game/game_user.dart';
import 'package:chat_app/presentation/common/components/circle_user_image.dart';
import 'package:chat_app/presentation/common/theme/theme.dart';
import 'package:chat_app/presentation/features/game/widgets/users_row_widget.dart';
import 'package:flutter/material.dart';

class PlayersRowWidget extends StatelessWidget {
  final Function()? onInvite;
  final double sidePadding;
  final double playersHeight;
  final GameUser? myUser;
  final GameUser? friendUser;

  const PlayersRowWidget({
    super.key,
    this.onInvite,
    required this.sidePadding,
    required this.playersHeight,
    required this.myUser,
    required this.friendUser,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: playersHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(),
          Expanded(
            flex: 7,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _userImage(context, myUser),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    myUser?.name ?? '',
                    style: mulish14Semi,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: Align(
              alignment: Alignment.centerRight,
              child: UsersRowWidget(friendUser: friendUser, onInvite: onInvite),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Stack _userImage(BuildContext context, GameUser? myUser) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.green1, width: 3),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: EdgeInsets.all(myUser?.isMyNextTurn ?? false ? 3 : 0),
              child: CirleUserImage.network(image: myUser?.imageUrl, name: myUser?.name, radius: 13.5),
            ),
          ),
        ),
        if (myUser?.isMyNextTurn == true)
          Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              color: AppColors.green1,
              border: Border.all(color: Colors.white, width: 1.3),
              borderRadius: BorderRadius.circular(3),
            ),
          ),
      ],
    );
  }
}
