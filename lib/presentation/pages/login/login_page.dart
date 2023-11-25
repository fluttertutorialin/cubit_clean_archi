import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pretty_animated_buttons/pretty_animated_buttons.dart';

import '../../../core/constants/constants.dart';
import '../../../core/localization/localization.dart';
import '../../../core/mixins/mixins.dart';
import '../../../core/router/router_path.dart';
import '../../../domain/entities/entities.dart';
import '../../cubits/login/login_cubits.dart';
import '../../widgets/components/components.dart';
import '../../../core/extensions/extensions.dart';

class LoginPage extends StatefulWidget with FormValidationMixin {
  LoginPage({super.key});

  @override
  createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  final FocusNode _mobileFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _mobileController.dispose();
    _passwordController.dispose();

    _mobileFocusNode.dispose();
    _passwordFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
        value: SystemUiOverlayStyle.dark
            .copyWith(statusBarColor: Colors.transparent),
        child: Scaffold(
            body: BlocListener<LoginCubit, LoginState>(
                listener: (context, state) {
                  state.whenOrNull(loginSuccess: (response) {
                    final LoginEntity(:userId, :userName, :mobile) = response;
                    context.read<LoginCubit>().loginSession(
                        userId: '$userId',
                        userName: userName,
                        mobileNo: mobile);
                    context.go(RouterPath.home);
                  }, loginError: (error) {
                    _mobileController.clear();
                    _passwordController.clear();

                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(SnackBar(content: Text(error)));
                  });
                },
                child: /*BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
        if (state is SignUpLoading) {

        }
        return SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            child: _loginForm(context: context));
      })*/
                    // Showing the sign in form if the user is not authenticated
                    SingleChildScrollView(
                        keyboardDismissBehavior:
                            ScrollViewKeyboardDismissBehavior.onDrag,
                        physics: const BouncingScrollPhysics(
                            parent: AlwaysScrollableScrollPhysics()),
                        child: _loginForm(context: context)))));
  }

  Widget _loginForm({required BuildContext context}) {
    return Stack(children: [
      Container(height: MediaQuery.sizeOf(context).height),
      Positioned(
          top: 0,
          right: 0,
          bottom: 0,
          left: 0,
          child: ColoredBox(color: context.primaryColor)),
      Positioned(
          top: 300.h,
          left: 0,
          right: 0,
          bottom: 0,
          child: Column(children: [
            //HEADER
            Text(Strings.of(context)!.appName, style: context.titleFormRoundCornerTextStyle),
            Text(Strings.of(context)!.companyName, style: context.subTitleFormRoundCornerTextStyle),
            80.verticalSpace,
            Expanded(
                child: FormRoundComponent(
                    child: Column(children: [
              //LOGIN FORM
              40.verticalSpace,
              Form(
                  key: formKey,
                  child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(children: [
                        _mobileTextField(),
                        PropertyConstant.textFieldBetweenSpace.verticalSpace,
                        _passwordTextField(),
                        PropertyConstant.textFieldButtonSpace.verticalSpace,
                        ElevatedButtonComponent(
                            isLoading: context.watch<LoginCubit>().isLoading,
                            buttonText: Strings.of(context)?.submitButton,
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                context.read<LoginCubit>().login(
                                    mobile: _mobileController.text,
                                    password: _passwordController.text);
                              }
                              formKey.currentState!.save();
                            })
                      ]))),
              15.verticalSpace,

              //FORGOT PASSWORD
              _forgotPasswordWidget(context),
              60.verticalSpace,

              //SIGN UP
              _singUpWidget(context)
            ])))
          ]))
    ]);
  }

  _mobileTextField() => TextFieldComponent(
      controller: _mobileController,
      validator: widget.mobileValidation,
      textInputAction: PropertyConstant.nextTextInputAction,
      maxLength: PropertyConstant.mobileMaxLength,
      focusNode: _mobileFocusNode,
      labelText: Strings.of(context)!.mobileNumberTextFieldHint,
      keyboardType: PropertyConstant.numberTextInputType);

  _passwordTextField() => Builder(builder: (context) {
        var loginState = context.watch<LoginCubit>();

        return TextFieldComponent(
            controller:
                _passwordController, //   controller: BlocProvider.of<TaskCubit>(context).titleController,
            validator: widget.passwordValidation,
            textInputAction: PropertyConstant.doneTextInputAction,
            maxLength: PropertyConstant.passwordMaxLength,
            focusNode: _passwordFocusNode,
            labelText: Strings.of(context)!.passwordTextFieldHint,
            suffixIcon: IconButton(
                icon: Icon(context.watch<LoginCubit>().isPasswordVisible
                    ? IconConstant.passwordInVisibleIcon
                    : IconConstant.passwordVisibleIcon),
                onPressed: () {
                  context.read<LoginCubit>().passwordVisibility();
                }),
            obscureText: loginState.isPasswordVisible);
      });

  _forgotPasswordWidget(BuildContext context) => Align(
      alignment: Alignment.topRight,
      child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () => context.goNamed(RouterPath.forgotPassword),
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(Strings.of(context)!.forgotPasswordNavigation,
                  textAlign: TextAlign.center,
                  style: context.navigationFormTextStyle))));

  _singUpWidget(BuildContext context) =>
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(Strings.of(context)!.doNotHaveAnAccountLabel,
            textAlign: TextAlign.center,
            style: context.labelNoNavigationFormTextStyle),
        const SizedBox(width: 5.0),
        PrettySlideUnderlineButton(
            label: Strings.of(context)!.newSignUpNavigation,
            onPressed: () => context.goNamed(RouterPath.signUp),
            labelStyle: context.navigationFormTextStyle,
            secondSlideColor: context.primaryColor,
            firstSlideColor: context.primaryColor)
      ]);
}
