import 'package:auto_route/auto_route.dart';
import 'package:chat_app/core/di/locator.dart';
import 'package:chat_app/core/utils/extensions/context_extensions.dart';
import 'package:chat_app/presentation/common/bloc/screen_bloc_provider_stateless.dart';
import 'package:chat_app/presentation/common/components/app_button.dart';
import 'package:chat_app/presentation/common/layout/expanded_single_child_scroll_view.dart';
import 'package:chat_app/presentation/common/mixins/snackbar_presenter.dart';
import 'package:chat_app/presentation/common/navigation/app_router.dart';
import 'package:chat_app/presentation/common/theme/theme.dart';
import 'package:chat_app/presentation/features/auth/reset_password/bloc/reset_password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:useful_extensions/useful_extensions.dart';

@RoutePage()
class ResetPasswordScreen extends ScreenBlocProviderStateless<ResetPasswordBloc, ResetPasswordState>
    with SnackBarPresenter {
  const ResetPasswordScreen();

  @override
  ResetPasswordBloc createBloc() => locator.get<ResetPasswordBloc>();

  void _listener(BuildContext context, ResetPasswordState state) => state.mapOrNull(
        error: (state) => state.errorSnackbar?.let((error) => context.showSnackBar(context, text: error)),
        success: (state) {
          showSnackbar(
            context,
            'Reset password mail has been successfully sent to your inbox',
            isError: false,
            height: 0,
            onClosed: () {
              context.router.popUntil((route) => route.data?.name == HomeRoute.name);
            },
          );
          return null;
        },
      );

  @override
  Widget buildScreen(BuildContext context, ResetPasswordBloc bloc) {
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
                      const Text('Restore password'),
                      const SizedBox(height: 12),
                      blocValueBuilder(
                        getter: (state) => (state.emailError, state is Loading),
                        builder: (context, record) {
                          final emailError = record.$1;
                          final loading = record.$2;

                          return TextField(
                            enabled: !loading,
                            onChanged: (value) => bloc.add(ResetPasswordEvent.clearEmailError(value)),
                            decoration: InputDecoration(
                              hintText: 'Email',
                              labelText: 'Email',
                              errorText: emailError,
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 24),
                      Align(
                        alignment: Alignment.centerRight,
                        child: blocBuilder(
                          builder: (context, state) {
                            final isEnabled = state.emailError == null;

                            return AppButton(
                              title: 'Send email',
                              loading: state is Loading,
                              onTap: isEnabled ? () => bloc.add(const ResetPasswordEvent.resetPassword()) : null,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
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
