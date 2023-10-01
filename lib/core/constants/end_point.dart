import 'package:flutter_dotenv/flutter_dotenv.dart';

class EndPointConstant {
  static final EndPointConstant _instance = EndPointConstant._internal();

  //Factory constructor, use the factory keyword when you need the constructor to not create a new object each time.
  factory EndPointConstant() => _instance;

  //Internal constructor
  EndPointConstant._internal();

  late String loginUrl, singUpUrl, returnAwbUrl, returnProcurementUrl;

  late Map<String, dynamic> defaultHeader;

  init() async {
    _collectionOfApi(baseUrl: dotenv.env['BASE_URL']!);
    defaultHeader = _defaultHeader(token: dotenv.env['HEADER_API_KEY']);
  }

  void _collectionOfApi({required String baseUrl}) {
    //SIGN UP API
    loginUrl = '${baseUrl}login';
    singUpUrl = '${baseUrl}signUp';
    returnAwbUrl = '${baseUrl}return';
    returnProcurementUrl = '${baseUrl}returnProcurement';
  }

  Map<String, dynamic> _defaultHeader({String? token}) =>
      {'AUTH_KEY': token, 'Content-Type': 'application/json'};
}
