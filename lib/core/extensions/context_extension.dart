import 'package:flutter/material.dart';

import '../theme/theme.dart';

extension ContextExtensions on BuildContext {
  TextTheme get _textThemeContext => Theme.of(this).textTheme;

  TextStyle? get subTitle1Context => _textThemeContext.titleMedium;
  TextStyle? get subTitle2Context => _textThemeContext.titleSmall;

  TextStyle? get _bodyText1Context => _textThemeContext.bodyLarge;

  TextStyle? get headerLine1Context => _textThemeContext.displayLarge;
  TextStyle? get headerLine2Context => _textThemeContext.displayMedium;
  TextStyle? get headerLine3Context => _textThemeContext.displaySmall;
  TextStyle? get headerLine4Context => _textThemeContext.headlineMedium;
  TextStyle? get headerLine5Context => _textThemeContext.headlineSmall;
  TextStyle? get headerLine6Context => _textThemeContext.titleLarge;

  //FORM
  TextStyle? get titleFormTextStyle => headerLine2Context;
  TextStyle? get subTitleFormTextStyle => headerLine6Context!.copyWith(fontSize: 18);

  //NAVIGATION
  TextStyle? get navigationFormTextStyle => headerLine3Context!.copyWith(fontWeight: FontWeight.w600);

  TextStyle? get labelNoNavigationFormTextStyle => headerLine2Context;

  TextStyle? get titleFormRoundCornerTextStyle => headerLine6Context!.copyWith(fontSize: 24, color: ColorConstant.whiteColor);
  TextStyle? get subTitleFormRoundCornerTextStyle => headerLine2Context!.copyWith(fontSize: 18, color: ColorConstant.whiteColor);

  //TEXT FIELD
  TextStyle? get defaultTextFieldTextStyle => _bodyText1Context!.copyWith(fontSize: 14);

  //VERIFY MOBILE
  TextStyle? get mobileVerifyTextStyle => headerLine4Context!.copyWith(fontSize: 16);

  ///SETTING
  TextStyle? get profileNameTextStyle => subTitle2Context;
  TextStyle? get settingMenuLabelTextStyle => _bodyText1Context;

  ///ITEM VIEW
  TextStyle? get uniqueIdItemViewTextStyle => headerLine2Context;
  TextStyle? get dateTimeItemViewTextStyle => headerLine2Context!.copyWith(fontSize: 12);
  TextStyle? get detailTextStyle => headerLine6Context!.copyWith(fontSize: 14);
  TextStyle? get serialNumberTextStyle => headerLine4Context!.copyWith(fontSize: 14);

  ///COLOR
  ThemeData get _theme => Theme.of(this);
  Color get primaryColor => _theme.colorScheme.primary;
}
