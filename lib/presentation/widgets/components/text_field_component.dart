/*
Developer: Lakhani kamlesh
Create Date: 24-11-21 3:41
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/extensions/extensions.dart';

class TextFieldComponent extends StatelessWidget {
  final String labelText;
  final String? initialValue;
  final Widget? prefixIcon, suffixIcon;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final void Function(String?)? onChanged, onSaved;
  final int? maxLength, maxLines;
  final int minLines;
  final bool readOnly, addHint, enabled, enableInteractiveSelection;
  final Function()? onTap;
  final AutovalidateMode autoValidateMode;
  final BoxConstraints? suffixIconConstraints;
  final bool obscureText;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final EdgeInsetsGeometry? contentPadding;
  final double? suffixWidth;
  final String? errorText;

  const TextFieldComponent(
      {super.key,
      required this.labelText,
      this.controller,
      this.prefixIcon,
      this.suffixIcon,
      this.keyboardType = TextInputType.text,
      this.validator,
      this.onChanged,
      this.onSaved,
      this.maxLength,
      this.maxLines = 1,
      this.minLines = 1,
      this.textInputAction,
      this.initialValue,
      this.enableInteractiveSelection = true,
      this.readOnly = false,
      this.focusNode,
      this.onTap,
      this.enabled = true,
      this.autoValidateMode = AutovalidateMode.onUserInteraction,
      this.addHint = false,
      this.suffixIconConstraints,
      this.contentPadding = const EdgeInsets.all(12),
      this.obscureText = false,
      this.suffixWidth = 40,
      this.errorText});

  @override
  Widget build(BuildContext context) => TextFormField(
      enableInteractiveSelection: enableInteractiveSelection,
      onTap: onTap,
      focusNode: focusNode,
      readOnly: readOnly,
      initialValue: initialValue,
      keyboardType: keyboardType,
      autovalidateMode: autoValidateMode,
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      minLines: minLines,
      maxLines: maxLines,
      onSaved: onSaved,
      textInputAction: textInputAction,
      enabled: enabled,
      obscureText: obscureText,

      //onTapOutside: (event) => FocusScope.of(context).unfocus(),
      inputFormatters: maxLength == null
          ? null
          : [
              LengthLimitingTextInputFormatter(maxLength),
              if (keyboardType == TextInputType.number)
                FilteringTextInputFormatter.digitsOnly
            ],
      style: context.defaultTextFieldTextStyle,
      decoration: InputDecoration(
          errorText: errorText,
          contentPadding: contentPadding,
          labelText: labelText,
          alignLabelWithHint: true,
          prefixIconConstraints:
              const BoxConstraints(maxHeight: 16, maxWidth: 51),
          prefixIcon: prefixIcon == null
              ? null
              : SizedBox(width: 40, child: prefixIcon),
          suffixIcon: suffixIcon == null
              ? null
              : SizedBox(width: suffixWidth, child: suffixIcon),
          suffixIconConstraints: suffixIconConstraints ??
              const BoxConstraints(maxHeight: 40, maxWidth: 51)));
}
