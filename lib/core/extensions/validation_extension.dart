import '../constants/constants.dart';
import '../localization/localization.dart';

export 'extensions.dart';

extension ValidationExtensions on bool {
  bool _hasMatch(String pattern) => RegExp(pattern).hasMatch(pattern);

  //VALIDATION
  bool get isEmail => _hasMatch(ValidationConstant.emailRegex);
}

extension StringExtension on String {
  bool isEqualCheck(String checkValue) {
    return this == checkValue;
  }

  String? mobileValidation() =>
      isEmpty ? mobileEmptyValidation : null;

  String? oldPasswordValidation() =>
      isEmpty ? oldPasswordEmptyValidation : null;

  String? passwordValidation() => isEmpty
      ? passwordEmptyValidation
      : length >= PropertyConstant.passwordMinLength
          ? null
          : 'Password minimum 6 digits';

  String? passwordLoginValidation() => isEmpty ? passwordEmptyValidation : null;

  String? confirmPasswordValidation(String password) => isEmpty
      ? confirmPasswordEmptyValidation
      : password == this
          ? null
          : passwordNotMatchValidation;

  String? firstNameValidation() => isEmpty ? firstNameEmptyValidation : null;

  String? nameValidation() => isEmpty ? nameEmptyValidation : null;

  String? lastNameValidation() => isEmpty ? lastNameEmptyValidation : null;

  String? emailValidation() => isEmpty ? emailEmptyValidation : null;
}
