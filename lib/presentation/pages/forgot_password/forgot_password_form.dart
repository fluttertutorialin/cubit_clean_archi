import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/constants.dart';
import '../../../core/localization/localization.dart';
import '../../../core/mixins/mixins.dart';
import '../../widgets/components/components.dart';

class ForgotPasswordForm extends StatefulWidget with FormValidationMixin {
  const ForgotPasswordForm({super.key});

  @override
  createState() {
    return ForgotPasswordState();
  }
}

class ForgotPasswordState extends State<ForgotPasswordForm> {
  //FORM KEY USE FOR VALIDATION
  final formKey = GlobalKey<FormState>();

  final TextEditingController mobileController = TextEditingController();
  final FocusNode mobileFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) => Form(
      key: formKey,
      child: Column(children: [
        TextFieldComponent(
            focusNode: mobileFocusNode,
            textInputAction: PropertyConstant.doneTextInputAction,
            maxLength: PropertyConstant.mobileMaxLength,
            controller: mobileController,
            validator: widget.mobileValidation,
            labelText: Strings.of(context)!.mobileNumberTextFieldHint,
            keyboardType: PropertyConstant.numberTextInputType),
        PropertyConstant.textFieldButtonSpace.verticalSpace,
        ElevatedButtonComponent(
            isLoading: false,
            buttonText: Strings.of(context)!.submitButton,
            onPressed: () => _forgotPasswordValidation())
      ]));

  //Check the validation
  _forgotPasswordValidation() {
    PropertyConstant.keyboardHide();

    switch (formKey.currentState!.validate()) {
      case true:
        formKey.currentState!.save();

        break;
      case false:
        break;
    }
  }
}
