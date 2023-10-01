import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/extensions/extensions.dart';
import '../../../core/localization/localization.dart';
import 'forgot_password_form.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) => AnnotatedRegion(
      value: SystemUiOverlayStyle.dark
          .copyWith(statusBarColor: Colors.transparent),
      child: Scaffold(
          body: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            BackButton(onPressed: () => context.pop()),
            Expanded(
                child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(children: [
                        //HEADER
                        SizedBox(height: 100.h),
                        Text(Strings.of(context)!.forgotPasswordFormTitle,
                            textAlign: TextAlign.center,
                            style: context.subTitleFormTextStyle),
                        const SizedBox(height: 8),
                        Text(Strings.of(context)!.forgotPasswordFormSubTitle,
                            textAlign: TextAlign.center,
                            style: context.titleFormTextStyle),

                        //FORGOT PASSWORD FORM
                        40.verticalSpace,
                        const ForgotPasswordForm()
                      ]),
                    )))
          ]))));
}
