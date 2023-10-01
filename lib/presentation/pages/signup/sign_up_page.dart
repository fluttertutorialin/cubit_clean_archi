import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../cubits/sign_up/sign_up_cubits.dart';
import 'sign_up_form.dart';

import '../../../core/localization/localization.dart';
import '../../../core/extensions/extensions.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) => AnnotatedRegion(
      value: SystemUiOverlayStyle.dark
          .copyWith(statusBarColor: Colors.transparent),
      child: Scaffold(
          body: BlocListener<SignUpCubit, SignUpState>(listener:
              (context, state) {
        state.whenOrNull(
          success: (success) {},
          error: (error) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text(error)));
          },
        );
      }, child:
              BlocBuilder<SignUpCubit, SignUpState>(builder: (context, state) {
        state.whenOrNull(loading: () {
          return const Center(child: CircularProgressIndicator());
        });

        // Showing the sign in form if the user is not authenticated
        return SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            child: _signUpForm(context: context));
      }))));

  Widget _signUpForm({required BuildContext context}) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          80.verticalSpace,
          Column(children: [
            //SIGN UP FORM
            40.verticalSpace,
            SignUpForm(),
            60.verticalSpace,

            //ALREADY HAVE AN ACCOUNT
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(Strings.of(context)!.alreadyAccountLabel,
                  textAlign: TextAlign.center,
                  style: context.labelNoNavigationFormTextStyle),
              InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () => context.pop(),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(Strings.of(context)!.loginHereNavigation,
                        textAlign: TextAlign.center,
                        style: context.navigationFormTextStyle),
                  ))
            ])
          ])
        ]));
  }
}
