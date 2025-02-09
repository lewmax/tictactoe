import 'package:auto_route/auto_route.dart';
import 'package:chat_app/core/di/locator.dart';
import 'package:chat_app/core/utils/extensions/context_extensions.dart';
import 'package:chat_app/presentation/common/bloc/screen_bloc_provider_statefull.dart';
import 'package:chat_app/presentation/common/components/app_button.dart';
import 'package:chat_app/presentation/common/components/circle_user_image.dart';
import 'package:chat_app/presentation/common/components/pick_image_modal_bottom.dart';
import 'package:chat_app/presentation/common/layout/expanded_single_child_scroll_view.dart';
import 'package:chat_app/presentation/common/navigation/app_router.dart';
import 'package:chat_app/presentation/features/profile/bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ScreenBlocProviderStateful<ProfileScreen, ProfileBloc, ProfileState> {
  @override
  ProfileBloc createBloc() => locator.get<ProfileBloc>();

  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: bloc.state.mapOrNull(success: (state) => state.name));
  }

  void pickImage(BuildContext context, ProfileBloc bloc) {
    context.showBottomSheet(
      context,
      widget: (bottomSheetContext) => PickImageModalBottom(
        onPhotoSelected: (callbackType, image) {
          bloc.add(ProfileEvent.editImage(ImageFile.local(image.path)));
        },
      ),
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        blocValueListener(
          getter: (state) => state.mapOrNull(success: (state) => state.isSuccess) ?? false,
          listener: (context, isSuccess) {
            if (isSuccess) {
              context.showSnackBar(context, text: context.l10n.profile_successUpdate);
            }
          },
        ),
        blocValueListener(
          getter: (state) => state.mapOrNull(success: (state) => state.error),
          listener: (context, error) {
            if (error != null) context.showSnackBar(context, text: error);
          },
        ),
        blocValueListener(
          getter: (state) => state.mapOrNull(success: (state) => state.name),
          listener: (context, name) {
            if (name != null && name != _controller.text) {
              _controller.text = name;
            }
          },
        ),
        // blocValueListener(
        //   getter: (state) => state.mapOrNull(success: (state) => state.isUnauthenticated) ?? false,
        //   listener: (context, isUnauthenticated) {
        //     if (isUnauthenticated) context.router.popForced();
        //   },
        // ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.l10n.profile_title, style: context.textStyles.mulish20Bold),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: SizedBox.expand(
              child: ExpandedSingleChildScrollView(
                child: blocValueBuilder(
                  getter: (state) => state.map(failure: (_) => null, success: (state) => state),
                  builder: (context, state) {
                    if (state == null) {
                      return Center(child: Text(context.l10n.profile_noInfo, style: context.textStyles.mulish16));
                    }

                    return IgnorePointer(ignoring: state.loading, child: _userinfo(context, bloc, state));
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column _userinfo(BuildContext context, ProfileBloc bloc, ProfileStateSuccess state) {
    return Column(
      children: [
        const SizedBox(height: 18),
        GestureDetector(
          onTap: () => pickImage(context, bloc),
          child: Hero(
            tag: 'image',
            child: state.image?.map(
                  remote: (image) => CirleUserImage.network(image: image.url, radius: 55),
                  local: (image) => CirleUserImage.file(image: image.path, radius: 55),
                ) ??
                CirleUserImage.network(image: null, radius: 55, textSize: 25, name: state.name),
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => pickImage(context, bloc),
              child: Text(
                context.l10n.profile_pickAvatar,
                style: context.textStyles.mulish14.copyWith(color: context.colors.blue),
              ),
            ),
            if (state.image != null)
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: GestureDetector(
                  onTap: () => bloc.add(const ProfileEvent.editImage(null)),
                  child: Text(
                    context.l10n.profile_removeAvatar,
                    style: context.textStyles.mulish14.copyWith(color: context.colors.red),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 26),
        TextField(
          enabled: !state.loading,
          controller: _controller,
          onChanged: (value) => bloc.add(ProfileEvent.editName(value)),
          decoration: InputDecoration(
            hintText: context.l10n.profile_hintLabelName,
            labelText: context.l10n.profile_hintLabelName,
            errorText: state.nameError,
          ),
        ),
        const SizedBox(height: 18),
        Text(state.email, style: context.textStyles.mulish16),
        // const SizedBox(height: 12),
        // Text('+${state.phone}', style: context.textStyles.profilePhone),
        const SizedBox(height: 40),
        GestureDetector(
          onTap: () {
            bloc.add(const ProfileEvent.logout());
          },
          child: Text(
            context.l10n.profile_log_out,
            style: context.textStyles.mulish14Semi.copyWith(color: context.colors.red1),
          ),
        ),
        const SizedBox(height: 18),
        const Spacer(),
        _divider(context),
        GestureDetector(
          onTap: () {
            context.router.push(const DeleteAccountRoute());
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Spacer(),
                Text('Data and Privacy'),
                Expanded(child: Align(alignment: Alignment.centerRight, child: Icon(Icons.keyboard_arrow_right))),
              ],
            ),
          ),
        ),
        _divider(context),
        const Spacer(),
        AppButton(
          title: context.l10n.profile_saveBtn,
          color: context.colors.blue1,
          style: context.textStyles.mulish14.copyWith(color: context.colors.white),
          onTap: state.loading || !bloc.shouldSave ? null : () => bloc.add(const ProfileEvent.save()),
          loading: state.loading,
          isContentCentered: true,
        ),
        const SizedBox(height: 18),
      ],
    );
  }

  Divider _divider(BuildContext context) => Divider(color: context.colors.grey9, height: 0, thickness: 1);
}
