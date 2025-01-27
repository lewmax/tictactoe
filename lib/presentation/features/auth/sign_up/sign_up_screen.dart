import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/core/di/locator.dart';
import 'package:chat_app/core/utils/extensions/context_extensions.dart';
import 'package:chat_app/presentation/common/bloc/screen_bloc_provider_stateless.dart';
import 'package:chat_app/presentation/common/components/app_button.dart';
import 'package:chat_app/presentation/common/components/circle_user_image.dart';
import 'package:chat_app/presentation/common/components/password_textfield.dart';
import 'package:chat_app/presentation/common/components/pick_image_modal_bottom.dart';
import 'package:chat_app/presentation/common/layout/expanded_single_child_scroll_view.dart';
import 'package:chat_app/presentation/common/navigation/app_router.dart';
import 'package:chat_app/presentation/common/theme/theme.dart';
import 'package:chat_app/presentation/features/auth/sign_up/bloc/sign_up_bloc.dart';
import 'package:useful_extensions/useful_extensions.dart';

@RoutePage()
class SignUpScreen extends ScreenBlocProviderStateless<SignUpBloc, SignUpState> {
  final Function()? onSignedIn;

  const SignUpScreen(this.onSignedIn, {super.key});

  @override
  SignUpBloc createBloc() => locator.get<SignUpBloc>();

  void _listener(BuildContext context, SignUpState state) => state.mapOrNull(
        error: (state) => state.errorSnackbar?.let((error) => context.showSnackBar(context, text: error)),
        success: (state) {
          // context.router.popUntil((route) => route.data?.name == HomeRoute.name);
          onSignedIn?.call();
          return null;
        },
      );

  void pickImage(BuildContext context, SignUpBloc bloc) {
    context.showBottomSheet(
      context,
      widget: (bottomSheetContext) => PickImageModalBottom(
        onPhotoSelected: (callbackType, image) {
          bloc.add(SignUpEvent.changeImage(image));
        },
      ),
    );
  }

  @override
  Widget buildScreen(BuildContext context, SignUpBloc bloc) {
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
          child: blocValueBuilder(
            getter: (state) => state is Loading,
            builder: (context, loading) {
              return IgnorePointer(
                ignoring: loading,
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
                            const Text('Sign up'),
                            const SizedBox(height: 12),
                            Center(
                              child: GestureDetector(
                                onTap: () => pickImage(context, bloc),
                                child: blocValueBuilder(
                                  getter: (state) => state.image,
                                  builder: (context, image) => CirleUserImage.file(image: image?.path, radius: 45),
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () => pickImage(context, bloc),
                                  child: const Text('Pick Avatar', style: TextStyle(color: Colors.blue)),
                                ),
                                blocValueBuilder(
                                  getter: (state) => state.image,
                                  builder: (context, image) {
                                    if (image == null) return const SizedBox();
                                    return Padding(
                                      padding: const EdgeInsets.only(left: 14),
                                      child: GestureDetector(
                                        onTap: () => bloc.add(const SignUpEvent.changeImage(null)),
                                        child: const Text('Remove Avatar', style: TextStyle(color: Colors.red)),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            blocValueBuilder(
                              getter: (state) => state.emailError,
                              builder: (context, emailError) {
                                return TextField(
                                  enabled: !loading,
                                  onChanged: (value) => bloc.add(SignUpEvent.clearEmailError(value)),
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    labelText: 'Email',
                                    errorText: emailError,
                                  ),
                                );
                              },
                            ),
                            // const SizedBox(height: 12),
                            // blocValueBuilder(
                            //   getter: (state) => (state.countryCode, state.phoneError),
                            //   builder: (context, record) {
                            //     final countryCode = record.$1;
                            //     final phoneError = record.$2;
                            //     return PhoneField(
                            //       countries: _countries,
                            //       codeChanged: (value) => bloc.add(SignUpEvent.phoneCountryCode(value)),
                            //       phoneChanged: (value) => bloc.add(SignUpEvent.changePhoneNumber(value)),
                            //       phoneCountryCode: countryCode,
                            //       phoneError: phoneError,
                            //     );
                            //   },
                            // ),
                            // const SizedBox(height: 12),
                            blocValueBuilder(
                              getter: (state) => state.fullNameError,
                              builder: (context, fullNameError) {
                                return TextField(
                                  enabled: !loading,
                                  onChanged: (value) => bloc.add(SignUpEvent.clearFullnameError(value)),
                                  decoration: InputDecoration(
                                    hintText: 'Display Name',
                                    labelText: 'Display Name',
                                    errorText: fullNameError,
                                  ),
                                );
                              },
                            ),
                            const SizedBox(height: 12),
                            blocValueBuilder(
                              getter: (state) => state.passordError,
                              builder: (context, passordError) {
                                return PasswordTextfield(
                                  enabled: !loading,
                                  passordError: passordError,
                                  hint: 'Password',
                                  onChanged: (value) => bloc.add(SignUpEvent.clearPassError(value)),
                                );
                              },
                            ),
                            // blocValueBuilder(
                            //   getter: (state) => state.passordRepeatError,
                            //   builder: (context, passordRepeatError) {
                            //     return PasswordTextfield(
                            //       enabled: !loading,
                            //       passordError: passordRepeatError,
                            //       hint: 'Password repeat',
                            //       onChanged: (value) => bloc.add(SignUpEvent.clearPassRepeatError(value)),
                            //     );
                            //   },
                            // ),
                            const SizedBox(height: 24),
                            Align(
                              alignment: Alignment.centerRight,
                              child: blocBuilder(
                                builder: (context, state) {
                                  final isEnabled = state.emailError == null &&
                                      state.passordError == null &&
                                      // state.passordRepeatError == null &&
                                      state.fullNameError == null &&
                                      state.phoneError == null;

                                  return AppButton(
                                    title: 'Sign up',
                                    loading: state is Loading,
                                    onTap: isEnabled ? () => bloc.add(const SignUpEvent.signUp()) : null,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Already have an account?"),
                        GestureDetector(
                          onTap: () => context.router.replace(SignInEmailRoute(onSignedIn: onSignedIn)),
                          child: const Text("Sign in", style: TextStyle(fontWeight: FontWeight.w600)),
                        ),
                      ],
                    ),
                    SizedBox(height: AppBar().preferredSize.height),
                    const Spacer(),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
