import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:chat_app/core/di/locator.dart';
import 'package:chat_app/core/utils/extensions/context_extensions.dart';
import 'package:chat_app/presentation/common/bloc/screen_bloc_provider_stateless.dart';
import 'package:chat_app/presentation/common/components/loader.dart';
import 'package:chat_app/presentation/common/layout/expanded_single_child_scroll_view.dart';
import 'package:chat_app/presentation/common/navigation/app_router.dart';
import 'package:chat_app/presentation/common/theme/theme.dart';
import 'package:chat_app/presentation/features/auth/sign/cubit/sign_cubit.dart';

const _buttonsPadding = EdgeInsets.only(top: 16, bottom: 16, left: 8, right: 42);

@RoutePage()
class SignScreen extends ScreenBlocProviderStateless<SignCubit, SignState> {
  const SignScreen(this.onSignedIn);

  final Function()? onSignedIn;

  @override
  SignCubit createBloc() => locator.get<SignCubit>();

  void _listener(BuildContext context, SignState state) => state.mapOrNull(
        failure: (state) => context.showSnackBar(context, text: state.error),
        // success: (state) => context.router.popUntil((route) => route.data?.name == HomeRoute.name),
      );

  @override
  Widget buildScreen(BuildContext context, SignCubit bloc) {
    return Scaffold(
      backgroundColor: AppColors.whiteBg,
      appBar: AppBar(
        backgroundColor: AppColors.whiteBg,
        foregroundColor: Colors.black,
      ),
      body: ExpandedSingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 18),
            context.icons.ticTacToe.image(width: 155),
            const SizedBox(height: 24),
            const Text(
              'Sign In or Sign Up to Start Playing',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 18),
            DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.whiteBg,
                borderRadius: BorderRadius.circular(2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: blocConsumer(
                  listener: _listener,
                  builder: (context, state) {
                    final loading = state.maybeMap(
                      loading: (_) => true,
                      orElse: () => false,
                    );

                    return Column(
                      children: [
                        SignInButton(
                          Buttons.google,
                          padding: _buttonsPadding.copyWith(top: 8, bottom: 8),
                          onPressed: loading ? () {} : bloc.signInGoogle,
                        ),
                        const SizedBox(height: 18),
                        SignInButton(
                          Buttons.email,
                          padding: _buttonsPadding,
                          text: 'Sign up with Email',
                          onPressed: loading ? () {} : () => context.router.push(SignUpRoute(onSignedIn: onSignedIn)),
                        ),
                        // const SizedBox(height: 18),
                        // SignInButtonBuilder(
                        //   text: 'Sign in with Phone',
                        //   padding: _buttonsPadding,
                        //   icon: Icons.phone,
                        //   onPressed:
                        //       loading ? () {} : () => context.router.push(SignInMobileRoute(onSignedIn: onSignedIn)),
                        //   backgroundColor: Colors.green,
                        // ),
                        const SizedBox(height: 18),
                        if (Platform.isIOS)
                          SignInButton(
                            Buttons.appleDark,
                            padding: _buttonsPadding,
                            onPressed: loading ? () {} : bloc.signInApple,
                          ),
                        if (loading) const AppLoader(),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
