import 'package:auto_route/auto_route.dart';
import 'package:chat_app/core/di/locator.dart';
import 'package:chat_app/core/utils/extensions/context_extensions.dart';
import 'package:chat_app/presentation/common/bloc/screen_bloc_provider_stateless.dart';
import 'package:chat_app/presentation/common/components/app_button.dart';
import 'package:chat_app/presentation/common/components/dont_have_account_section.dart';
import 'package:chat_app/presentation/common/components/password_textfield.dart';
import 'package:chat_app/presentation/common/layout/expanded_single_child_scroll_view.dart';
import 'package:chat_app/presentation/common/navigation/app_router.dart';
import 'package:chat_app/presentation/common/theme/theme.dart';
import 'package:chat_app/presentation/features/auth/sign_in_email/bloc/sing_in_email_bloc.dart';
import 'package:flutter/material.dart';
import 'package:useful_extensions/useful_extensions.dart';

@RoutePage()
class SignInEmailScreen extends ScreenBlocProviderStateless<SingInEmailBloc, SingInEmailState> {
  final Function()? onSignedIn;

  const SignInEmailScreen(this.onSignedIn, {super.key});

  @override
  SingInEmailBloc createBloc() => locator.get<SingInEmailBloc>();

  void _listener(BuildContext context, SingInEmailState state) => state.mapOrNull(
        error: (state) => state.errorSnackbar?.let((error) => context.showSnackBar(context, text: error)),
        success: (state) {
          // context.router.popUntil((route) => route.data?.name == HomeRoute.name);
          onSignedIn?.call();
          return null;
        },
      );

  @override
  Widget buildScreen(BuildContext context, SingInEmailBloc bloc) {
    return blocListener(
      listener: _listener,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        backgroundColor: AppColors.whiteBg,
        body: ExpandedSingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const Spacer(),
              DecoratedBox(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Sign in with email'),
                      const SizedBox(height: 12),
                      blocValueBuilder(
                        getter: (state) => (state.emailError, state is Loading),
                        builder: (context, record) {
                          final emailError = record.$1;
                          final loading = record.$2;

                          return TextField(
                            enabled: !loading,
                            onChanged: (value) => bloc.add(SingInEmailEvent.clearEmailError(value)),
                            decoration: InputDecoration(
                              hintText: 'Email',
                              labelText: 'Email',
                              errorText: emailError,
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 12),
                      blocValueBuilder(
                        getter: (state) => (state.passordError, state is Loading),
                        builder: (context, record) {
                          final passordError = record.$1;
                          final loading = record.$2;

                          return PasswordTextfield(
                            enabled: !loading,
                            passordError: passordError,
                            hint: 'Password',
                            onChanged: (value) => bloc.add(SingInEmailEvent.clearPassError(value)),
                          );
                        },
                      ),
                      const SizedBox(height: 24),
                      Align(
                        alignment: Alignment.centerRight,
                        child: blocBuilder(
                          builder: (context, state) {
                            final isEnabled = state.emailError == null && state.passordError == null;

                            return AppButton(
                              title: 'Sign in',
                              loading: state is Loading,
                              onTap: isEnabled ? () => bloc.add(const SingInEmailEvent.signIn()) : null,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              DontHaveAccountSection(onSignedIn: onSignedIn),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Forgot password?"),
                  InkWell(
                    onTap: () => context.router.replace(const ResetPasswordRoute()),
                    child: const Text("Restore", style: TextStyle(fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
              SizedBox(height: AppBar().preferredSize.height),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
