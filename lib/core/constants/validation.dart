//VALIDATION OF REGEX
class ValidationConstant {
  static const String emailRegex = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static const String onlyNumericRegex = r'[^0-9]';
  static const String mobileNumberRegex = r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-10]*$';
}
