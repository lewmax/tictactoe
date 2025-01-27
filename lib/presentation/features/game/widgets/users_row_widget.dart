import 'package:chat_app/core/utils/extensions/context_extensions.dart';
import 'package:chat_app/domain/entities/game/game_user.dart';
import 'package:chat_app/presentation/common/bloc/bloced_widget.dart';
import 'package:chat_app/presentation/common/components/circle_user_image.dart';
import 'package:chat_app/presentation/common/theme/theme.dart';
import 'package:chat_app/presentation/features/game/online/bloc/game_bloc.dart';
import 'package:flutter/material.dart';

class UsersRowWidget extends BlocedWidget<GameBloc, GameState> {
  final GameUser? friendUser;
  final Function()? onInvite;

  const UsersRowWidget({super.key, required this.friendUser, required this.onInvite});

  @override
  Widget build(BuildContext context) {
    return friendUser == null
        ? GestureDetector(
            onTap: onInvite != null ? () => onInvite!() : null,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person_add_alt_1, color: Colors.white),
                ),
                const SizedBox(width: 10),
                Text(
                  context.l10n.game_invite,
                  style: mulish14Semi.copyWith(
                    color: AppColors.blue1,
                    decorationColor: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _userImage(context),
              const SizedBox(width: 12),
              Flexible(
                child: Text(
                  friendUser?.name ?? '',
                  style: mulish14Semi,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          );
  }

  Stack _userImage(BuildContext context) {
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
              padding: EdgeInsets.all(friendUser?.isMyNextTurn ?? false ? 3 : 0),
              child: CirleUserImage.network(image: friendUser?.imageUrl, name: friendUser!.name[0]),
            ),
          ),
        ),
        if (friendUser?.isMyNextTurn == true)
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
