part of '../home_page.dart';

class _HomeApppar extends BlocedWidget<HomeBloc, HomeState> implements PreferredSizeWidget {
  const _HomeApppar();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 1,
      child: Padding(
        padding: EdgeInsets.fromLTRB(12, context.screenPadding.top, 12, 0),
        child: Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: blocValueBuilder(
                  getter: (state) =>
                      state.map(user: (state) => state, noUser: (_) => null, requiresUpdate: (_) => null),
                  builder: (context, userState) {
                    final user = userState?.user;
                    return user == null
                        ? InkWell(
                            onTap: () => context.router.push(SignRoute(onSignedIn: null)),
                            child: Text(context.l10n.home_signIn,
                                style: context.textStyles.mulish18.copyWith(color: context.colors.blue)),
                          )
                        : GestureDetector(
                            onTap: () => context.router.push(const ProfileRoute()),
                            child: Hero(
                              tag: 'image',
                              child: CirleUserImage.network(
                                image: user.imageUrl,
                                name: user.name,
                                radius: 20,
                                textSize: 20,
                              ),
                            ),
                          );
                  },
                ),
              ),
            ),
            context.icons.ticTacToe.image(width: 65),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
