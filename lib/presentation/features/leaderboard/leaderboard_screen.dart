import 'package:auto_route/auto_route.dart';
import 'package:chat_app/core/di/locator.dart';
import 'package:chat_app/presentation/common/bloc/screen_bloc_provider_statefull.dart';
import 'package:chat_app/presentation/common/theme/theme.dart';
import 'package:chat_app/presentation/features/leaderboard/bloc/leaderboard_bloc.dart';
import 'package:chat_app/presentation/features/leaderboard/widgets/leaderboard_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:useful_extensions/useful_extensions.dart';

@RoutePage()
class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends ScreenBlocProviderStateful<LeaderboardScreen, LeaderboardBloc, LeaderboardState>
    with TickerProviderStateMixin {
  @override
  LeaderboardBloc createBloc() => locator.get();

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBg,
      appBar: AppBar(
        title: Text('Leaderboard', style: mulish18Bold),
        backgroundColor: AppColors.whiteBg,
        centerTitle: true,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          const SizedBox(height: 18),
          blocValueBuilder(
            getter: (state) => state.datetime,
            builder: (context, datetime) {
              return Text(DateFormat('MMMM d, yyyy').format(datetime), style: mulish16Bold);
            },
          ),
          const SizedBox(height: 18),
          Flexible(
            child: blocValueBuilder(
              getter: (state) => state.topUsers,
              builder: (context, topUsers) {
                if (topUsers.isEmpty) {
                  return Container(
                    margin: const EdgeInsets.only(top: 12),
                    alignment: Alignment.topCenter,
                    child: _youCouldBeHere(),
                  );
                }

                return _topUsers(context, topUsers.mapIndexed((i, user) => LeaderboardItem(i, user)).toList());
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _topUsers(BuildContext context, List<Widget> users) {
    return ColoredBox(
      color: Colors.white,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        shrinkWrap: true,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Rank', style: inter16Bold),
              const SizedBox(width: 20),
              Expanded(child: Text('Player', style: inter16Bold)),
              SizedBox(width: 52, child: Center(child: Text('Wins', style: inter16Bold))),
              SizedBox(width: 52, child: Center(child: Text('Loses', style: inter16Bold))),
              SizedBox(width: 52, child: Center(child: Text('Rate', style: inter16Bold))),
            ],
          ),
          const SizedBox(height: 8),
          ...users,
        ],
      ),
    );
  }

  Widget _youCouldBeHere() =>
      Padding(padding: const EdgeInsets.only(left: 32), child: Text('You could be here 🏆', style: mulish18));
}
