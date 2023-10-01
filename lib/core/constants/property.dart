import 'package:flutter/material.dart';

class PropertyConstant {
  static final ShapeBorder cardShapeBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0));
  static final BorderRadius textFieldBorderRadius = BorderRadius.circular(10.0);
  static final BorderRadius labelBorderRadius = BorderRadius.circular(12.0);
  static const BorderRadius bottomSheetBorderRadius = BorderRadius.only(topRight: Radius.circular(14.0), topLeft: Radius.circular(14.0));

  static final OutlineInputBorder searchTextFieldOutlineInputBorder =
      OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: Color(0xFFBDBDBD)));

  //ITEM-VIEW
  static const BorderRadius mobileImageContainerBorderRadius = BorderRadius.all(Radius.circular(4.0));

  //CHART
  static const BorderRadius columnSeriesBorder = BorderRadius.zero; //BorderRadius.vertical(top: Radius.circular(0));

  //INPUT TYPE
  static keyboardHide() => FocusManager.instance.primaryFocus?.unfocus(); //Flutter version 2 or latest

  static const TextInputType nameTextInputType = TextInputType.name;
  static const TextInputType numberTextInputType = TextInputType.number;
  static const TextInputType emailTextInputType = TextInputType.emailAddress;
  static const TextInputType textInputType = TextInputType.text;
  static const TextInputType multipleTextInputAction = TextInputType.multiline;
  static const TextInputType urlTextInputType = TextInputType.url;

  static const TextInputAction nextTextInputAction = TextInputAction.next;
  static const TextInputAction doneTextInputAction = TextInputAction.done;

  static const bool passwordObscureText = true;

  static const int passwordMinLength = 6;
  static const int mobileMaxLength = 10;
  static const int passwordMaxLength = 20;
  static const int shopNameMaxLength = 20;
  static const int ownerNameMaxLength = 30;
  static const int imeiNumberLength = 15;
  static const int pinCodeLength = 6;
  static const int panNumberLength = 10;
  static const int uniqueIdentificationNumberLength = 12;
  static const int sellingPriceMaxLength = 10;

  static const double bottomIconSize = 25.0;

  static const int textFieldBetweenSpace = 35;
  static const int textFieldButtonSpace = 25;
  static const int textFieldButton10Space = 10;

  //FONT SIZE
  static const double headLine6FontSize = 22.0;
  static const double headLine5FontSize = 14.0;
  static const double headLine4FontSize = 16.0;
  static const double headLine3FontSize = 14.0;
  static const double headLine2FontSize = 15.0;
  static const double headLine1FontSize = 14.0;

  static const double body2FontSize = 18.0;
  static const double body1FontSize = 14.0;

  static const double subTitle2FontSize = 15.0;
  static const double subTitle1FontSize = 16.0;

  static const double buttonFontSize = 18.0;
  static const double overLineFontSize = 18.0;
  static const double captionFontSize = 14.0;
  static const double errorTextFieldFontSize = 12.0;

  static const double fontHeight = 1.3;
}
