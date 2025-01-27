import 'package:auto_route/auto_route.dart';
import 'package:chat_app/core/di/locator.dart';
import 'package:chat_app/data/repositories/auth/auth_repo_impl.dart';
import 'package:chat_app/presentation/common/bloc/screen_bloc_provider_statefull.dart';
import 'package:chat_app/presentation/common/components/loader.dart';
import 'package:chat_app/presentation/common/components/password_textfield.dart';
import 'package:chat_app/presentation/common/mixins/snackbar_presenter.dart';
import 'package:chat_app/presentation/common/theme/theme.dart';
import 'package:chat_app/presentation/features/profile/delete_account/bloc/delete_account_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class DeleteAccountPage extends StatefulWidget {
  const DeleteAccountPage({super.key});

  @override
  State<DeleteAccountPage> createState() => _DeleteAccountPageState();
}

class _DeleteAccountPageState
    extends ScreenBlocProviderStateful<DeleteAccountPage, DeleteAccountBloc, DeleteAccountState>
    with SnackBarPresenter {
  @override
  DeleteAccountBloc createBloc() => locator.get<DeleteAccountBloc>();

  String password = '';

  final providerData = FirebaseAuth.instance.currentUser?.providerData.first;

  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget buildScreen(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        blocListener(
          listener: (context, state) {
            state.map(
              initial: (_) {},
              loading: (_) {},
              success: (_) => showSnackbar(context, 'Account deleted successfuly', isError: false, height: 0),
              error: (state) => showSnackbar(context, state.error, isError: true, height: 0),
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile', style: mulish20Bold),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 72),
            child: Align(
              alignment: Alignment.topCenter,
              child: blocBuilder(
                builder: (context, state) {
                  return Column(
                    children: [
                      if (!(user?.isSocialLogin ?? true)) ...[
                        PasswordTextfield(
                          enabled: state.mapOrNull(loading: (_) => false) ?? true,
                          onChanged: (value) => password = value.trim(),
                          hint: 'Password',
                        ),
                        const SizedBox(height: 46),
                      ],
                      state.maybeMap(
                        loading: (_) => const AppLoader(),
                        orElse: () => GestureDetector(
                          onTap: () {
                            bloc.add(DeleteAccountEvent.deleteAccount(password));
                          },
                          child: Text('Delete Account', style: mulish14Semi.copyWith(color: AppColors.red1)),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
