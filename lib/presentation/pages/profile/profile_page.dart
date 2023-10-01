import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/constants.dart';
import '../../../core/extensions/extensions.dart';
import '../../../core/localization/localization.dart';
import '../../../domain/entities/entities.dart';
import '../../../injectable.dart';
import '../../cubits/login/login_cubits.dart';
import '../../cubits/user_detail/user_detail_cubits.dart';
import '../../widgets/widget/widget.dart';

/*
    switch (state.runtimeType) { }

    switch (state.runtimeType) {
                      case UserDetailState.initial:
                        return Text('f');
                    }
*/

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<UserDetailCubit, UserDetailState>(
            bloc: getIt<UserDetailCubit>()..userDetail(),
            listener: (context, state) {},
            builder: (_, state) {
              return state.when(
                  initial: () => const SizedBox.shrink(),
                  loading: () => const PlatformLoadingIndicatorWidget(),
                  success: (UserDetailEntity userDetail) => SafeArea(
                          child: Column(children: [
                        Center(
                            child: Column(children: [
                          const SizedBox(height: 8),
                          CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.grey.withOpacity(0.8),
                              backgroundImage: const ExactAssetImage(
                                  AssetImageConstant.profilePictureImage)),
                          const SizedBox(height: 8),
                          Text(userDetail.userName!,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: context.profileNameTextStyle)
                        ])),
                        const SizedBox(height: 20),
                        _menuWidget(context, callback: () {
                          //context.goNamed('login');
                        },
                            title: 'Change password',
                            prefixIconData: IconConstant.changePasswordIcon),
                        _menuWidget(context, callback: () {
                          //context.goNamed('login');
                        },
                            title: 'Appearance',
                            prefixIconData: IconConstant.appearanceIcon),
                        _menuWidget(context, callback: () {
                          context.read<LoginCubit>().logoutOut();
                          context.goNamed('login');
                        },
                            title: Strings.of(context)!.logoutLabel,
                            prefixIconData: IconConstant.logoutIcon)
                      ])));
            }));
  }
}

_menuWidget(BuildContext context,
        {required String title,
        required IconData prefixIconData,
        required Function()? callback}) =>
    InkWell(
        onTap: callback,
        child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Icon(prefixIconData, size: 20),
                    const SizedBox(width: 15),
                    Text(title, style: context.settingMenuLabelTextStyle)
                  ])
                ])));
