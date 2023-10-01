import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';

class FontConstant {
  static final appNormalFont =
      GoogleFonts.varelaRound(fontStyle: FontStyle.normal);
  static final appItalicFont =
      GoogleFonts.varelaRound(fontStyle: FontStyle.italic);

  //NORMAL WEIGHT FONT
  static final appNormalWeight700Font = GoogleFonts.varelaRound(
      fontStyle: FontStyle.normal, fontWeight: FontWeight.w700);

  static headLine6TextStyleFont(Color color) => appNormalFont.copyWith(
      fontSize: PropertyConstant.headLine6FontSize,
      fontWeight: FontWeight.w700,
      color: color,
      height: PropertyConstant.fontHeight);

  static headLine5TextStyleFont(Color color) => appNormalFont.copyWith(
      fontSize: PropertyConstant.headLine5FontSize,
      fontWeight: FontWeight.w400,
      color: color,
      height: PropertyConstant.fontHeight);

  static headLine4TextStyleFont(Color color) => appNormalFont.copyWith(
      fontSize: PropertyConstant.headLine4FontSize,
      fontWeight: FontWeight.w600,
      color: color,
      height: PropertyConstant.fontHeight);

  static headLine3TextStyleFont(Color color) => appNormalFont.copyWith(
      fontSize: PropertyConstant.headLine3FontSize,
      fontWeight: FontWeight.w500,
      color: color,
      height: PropertyConstant.fontHeight);

  static headLine2TextStyleFont(Color color) => appNormalFont.copyWith(
      fontSize: PropertyConstant.headLine2FontSize,
      fontWeight: FontWeight.w500,
      color: color,
      height: PropertyConstant.fontHeight);

  static headLine1TextStyleFont(Color color) => appNormalFont.copyWith(
      fontSize: PropertyConstant.headLine1FontSize,
      fontWeight: FontWeight.w500,
      color: color,
      height: PropertyConstant.fontHeight);

  static subTitle2TextStyleFont(Color color) => appNormalFont.copyWith(
      fontSize: PropertyConstant.subTitle2FontSize,
      fontWeight: FontWeight.w600,
      color: color,
      height: PropertyConstant.fontHeight);

  static subTitle1TextStyleFont(Color color) => appNormalFont.copyWith(
      fontSize: PropertyConstant.subTitle1FontSize,
      fontWeight: FontWeight.w400,
      color: color,
      height: PropertyConstant.fontHeight);

  static bodyText2TextStyleFont(Color color) => appNormalFont.copyWith(
      fontSize: PropertyConstant.body2FontSize,
      fontWeight: FontWeight.w400,
      color: color,
      height: PropertyConstant.fontHeight);

  static bodyText1TextStyleFont(Color color) => appNormalFont.copyWith(
      fontSize: PropertyConstant.body1FontSize,
      fontWeight: FontWeight.w400,
      color: color,
      height: PropertyConstant.fontHeight);

  static buttonTextStyleFont(Color color) => appNormalFont.copyWith(
      fontSize: PropertyConstant.buttonFontSize,
      fontWeight: FontWeight.w400,
      color: color,
      height: PropertyConstant.fontHeight);

  static overLineTextStyleFont(Color color) => appNormalFont.copyWith(
      fontSize: PropertyConstant.overLineFontSize,
      fontWeight: FontWeight.w400,
      color: color,
      height: PropertyConstant.fontHeight);

  static captionTextStyleFont(Color color) => appNormalFont.copyWith(
      fontSize: PropertyConstant.captionFontSize,
      fontWeight: FontWeight.w400,
      color: color,
      height: PropertyConstant.fontHeight);

  static errorTextFieldStyleFont(Color color) => appNormalFont.copyWith(
      fontSize: PropertyConstant.errorTextFieldFontSize,
      fontWeight: FontWeight.w400,
      color: color,
      height: PropertyConstant.fontHeight);

  static titleMediumTextStyleFont(Color color) => appNormalFont.copyWith(
      fontSize: PropertyConstant.headLine2FontSize,
      fontWeight: FontWeight.w500,
      color: color,
      height: PropertyConstant.fontHeight);
}
