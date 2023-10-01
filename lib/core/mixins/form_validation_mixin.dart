import '../extensions/extensions.dart';

mixin FormValidationMixin {
  ///BASIC
  String? mobileValidation(String? value) => value!.mobileValidation();

  String? firstNameValidation(String? value) => value!.firstNameValidation();

  String? nameValidation(String? value) => value!.nameValidation();

  String? lastNameValidation(String? value) => value!.lastNameValidation();

  String? emailValidation(String? value) => value!.emailValidation();

  ///PASSWORD
  String? passwordValidation(String? value) => value!.passwordLoginValidation();

  String? confirmPasswordValidation(String? value, String? password) =>
      value!.confirmPasswordValidation(password!);

  String? oldPasswordValidation(String? value) =>
      value!.oldPasswordValidation();

  String? newPasswordValidation(String? value) => value!.passwordValidation();

  String? newConfirmPasswordValidation(String? value, String? newPassword) =>
      value!.confirmPasswordValidation(newPassword!);
}
