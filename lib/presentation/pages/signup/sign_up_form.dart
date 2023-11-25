import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/constants.dart';
import '../../../core/localization/localization.dart';
import '../../../core/mixins/mixins.dart';
import '../../cubits/sign_up/sign_up_cubits.dart';
import '../../widgets/components/components.dart';

class SignUpForm extends StatefulWidget with FormValidationMixin {
  SignUpForm({super.key});

  @override
  createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  final FocusNode _firstNameFocusNode = FocusNode();
  final FocusNode _lastNameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _mobileFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _confirmPasswordFocusNode = FocusNode();

  bool? passwordVisible = true;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _mobileController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();

    _firstNameFocusNode.dispose();
    _lastNameFocusNode.dispose();
    _emailFocusNode.dispose();
    _mobileFocusNode.dispose();
    _passwordFocusNode.dispose();
    _confirmPasswordFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Form(
      key: formKey,
      child: Column(children: [
        _firstNameTextField(),
        PropertyConstant.textFieldBetweenSpace.verticalSpace,
        _lastNameTextField(),
        PropertyConstant.textFieldBetweenSpace.verticalSpace,
        _emailTextField(),
        PropertyConstant.textFieldBetweenSpace.verticalSpace,
        _mobileTextField(),
        PropertyConstant.textFieldBetweenSpace.verticalSpace,
        _passwordTextField(),
        PropertyConstant.textFieldButtonSpace.verticalSpace,
        _confirmPasswordTextField(),
        PropertyConstant.textFieldButtonSpace.verticalSpace,
        _signUpButton(context: context)
      ]));

  _firstNameTextField() => TextFieldComponent(
      controller: _firstNameController,
      validator: widget.firstNameValidation,
      textInputAction: PropertyConstant.nextTextInputAction,
      focusNode: _firstNameFocusNode,
      labelText: Strings.of(context)!.firstNameTextFieldHint,
      keyboardType: PropertyConstant.nameTextInputType);

  _lastNameTextField() => TextFieldComponent(
      controller: _lastNameController,
      validator: widget.lastNameValidation,
      textInputAction: PropertyConstant.nextTextInputAction,
      focusNode: _lastNameFocusNode,
      labelText: Strings.of(context)!.lastNameTextFieldHint,
      keyboardType: PropertyConstant.nameTextInputType);

  _emailTextField() => TextFieldComponent(
      controller: _emailController,
      validator: widget.emailValidation,
      textInputAction: PropertyConstant.nextTextInputAction,
      focusNode: _emailFocusNode,
      labelText: Strings.of(context)!.emailTextFieldHint,
      keyboardType: PropertyConstant.emailTextInputType);

  _mobileTextField() => TextFieldComponent(
      controller: _mobileController,
      validator: widget.mobileValidation,
      textInputAction: PropertyConstant.nextTextInputAction,
      maxLength: PropertyConstant.mobileMaxLength,
      focusNode: _mobileFocusNode,
      labelText: Strings.of(context)!.mobileNumberTextFieldHint,
      keyboardType: PropertyConstant.numberTextInputType);

  _passwordTextField() =>
      BlocConsumer<SignUpCubit, SignUpState>(listener: (context, state) {
        state.whenOrNull(passwordShow: (passwordShow) {
          passwordVisible = passwordShow;
        }, passwordHide: (passwordHide) {
          passwordVisible = passwordHide;
        });
      }, builder: (context, state) {
        return TextFieldComponent(
            controller: _passwordController,
            validator: widget.passwordValidation,
            textInputAction: PropertyConstant.doneTextInputAction,
            maxLength: PropertyConstant.passwordMaxLength,
            focusNode: _passwordFocusNode,
            labelText: Strings.of(context)!.passwordTextFieldHint,
            suffixIcon: IconButton(
                icon: Icon(
                    passwordVisible! ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  state.whenOrNull(passwordShow: (passwordShow) {
                    context.read<SignUpCubit>().passwordHide(passwordVisible);
                  }, passwordHide: (passwordHide) {
                    context
                        .read<SignUpCubit>()
                        .passwordShowing(passwordVisible);
                  });
                }),
            obscureText: passwordVisible!);
      });

  _confirmPasswordTextField() =>
      BlocConsumer<SignUpCubit, SignUpState>(listener: (context, state) {
        state.whenOrNull(passwordShow: (passwordShow) {
          passwordVisible = passwordShow;
        }, passwordHide: (passwordHide) {
          passwordVisible = passwordHide;
        });
      }, builder: (context, state) {
        return TextFieldComponent(
            controller: _confirmPasswordController,
            validator: (String? value) =>
                widget.confirmPasswordValidation(value, _passwordController.text),
            textInputAction: PropertyConstant.nextTextInputAction,
            maxLength: PropertyConstant.passwordMaxLength,
            focusNode: _confirmPasswordFocusNode,
            labelText: Strings.of(context)!.confirmPasswordTextFieldHint,
            suffixIcon: IconButton(
                icon: Icon(
                    passwordVisible! ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  state.whenOrNull(passwordShow: (passwordShow) {
                    context.read<SignUpCubit>().passwordHide(passwordVisible);
                  }, passwordHide: (passwordHide) {
                    context
                        .read<SignUpCubit>()
                        .passwordShowing(passwordVisible);
                  });
                }),
            obscureText: passwordVisible!);
      });

  _signUpButton({required BuildContext context}) => ElevatedButtonComponent(
      isLoading: false,
      buttonText: Strings.of(context)!.submitButton,
      onPressed: () {
        if (formKey.currentState!.validate()) {
        } else {}
      });
}
