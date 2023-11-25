import 'package:injectable/injectable.dart';

import '../../core/api_response/api_response.dart';
import '../../core/dio_response/dio_base_response.dart';
import '../../core/api/api.dart';
import '../../core/constants/constants.dart';
import '../../domain/entities/entities.dart';
import '../models/models.dart';

abstract class RemoteDataSource {
  //AUTHENTICATION
  Future<ApiResponse<LoginEntity>> login(Map<String, dynamic>? params);
  Future<ApiResponse<SignUpEntity>> signUp(Map<String, dynamic>? params);
  Future<ApiResponse<ForgotPasswordEntity>> forgotPassword(
      Map<String, dynamic>? params);

  //RETURN SUBMIT
  Future<ApiResponse<ReturnEntity>> returnAwb(Map<String, dynamic>? params);
  Future<ApiResponse<ReturnEntity>> returnProcurement(
      Map<String, dynamic>? params);
}

@LazySingleton(as: RemoteDataSource)
class RemoteDataSourceImpl implements RemoteDataSource {
  final ApiConsumer apiConsumer;

  RemoteDataSourceImpl({required this.apiConsumer});

  final EndPointConstant endPointConstant = EndPointConstant();

  @override
  Future<ApiResponse<LoginEntity>> login(Map<String, dynamic>? params) async {
    final response = await _loginApi(params: params);
    if (response.statusCode == StatusCodeConstant.statusCodeOk200) {
      return ApiResponse(data: LoginModels.fromJson(response.data).toDomain());
    } else if (response.statusCode ==
        StatusCodeConstant.statusCodeNotFound400) {
      throw NotFoundException(response.message);
    } else {
      throw ErrorException(message: response.message);
    }
  }

  @override
  Future<ApiResponse<SignUpEntity>> signUp(Map<String, dynamic>? params) async {
    final response = await apiConsumer.get(url: '', params: params);
    if (response.statusCode == StatusCodeConstant.statusCodeOk200) {
      return ApiResponse(
          data: SignUpModels.fromJson(response.data).toDomainEntity());
    } else {
      throw const ErrorException(message: '');
    }
  }

  @override
  Future<ApiResponse<ForgotPasswordEntity>> forgotPassword(
      Map<String, dynamic>? params) async {
    final response = await apiConsumer.get(url: '', params: params);
    if (response.statusCode == StatusCodeConstant.statusCodeOk200) {
      return ApiResponse(
          data: ForgotPasswordModels.fromJson(response.data).toDomainEntity());
    } else {
      throw const ErrorException(message: '');
    }
  }

  @override
  Future<ApiResponse<ReturnEntity>> returnAwb(
      Map<String, dynamic>? params) async {
    final response = await _returnAwbApi(params: params);
    if (response.statusCode == StatusCodeConstant.statusCodeOk200) {
      return ApiResponse(data: ReturnModel.fromJson(response.data).toDomain());
    } else if (response.statusCode ==
        StatusCodeConstant.statusCodeNotFound400) {
      throw NotFoundException(ReturnModel.fromJson(response.data).message);
    } else {
      throw ErrorException(message: response.message);
    }
  }

  @override
  Future<ApiResponse<ReturnEntity>> returnProcurement(
      Map<String, dynamic>? params) async {
    final response = await _returnProcurementApi(params: params);
    if (response.statusCode == StatusCodeConstant.statusCodeOk200) {
      return ApiResponse(data: ReturnModel.fromJson(response.data).toDomain());
    } else if (response.statusCode ==
        StatusCodeConstant.statusCodeNotFound400) {
      throw NotFoundException(ReturnModel.fromJson(response.data).message);
    } else {
      throw ErrorException(message: response.message);
    }
  }

  Future<DioBaseResponse> _loginApi(
          {required Map<String, dynamic>? params}) async =>
      apiConsumer
          .get(
              url: endPointConstant.loginUrl,
              headers: endPointConstant.defaultHeader,
              params: params)
          .then((value) => DioBaseResponse(
              statusCode: value.statusCode,
              message: value.message,
              data: value.data));

  Future<DioBaseResponse> _returnAwbApi(
          {required Map<String, dynamic>? params}) async =>
      apiConsumer
          .post(
              url: endPointConstant.returnAwbUrl,
              headers: endPointConstant.defaultHeader,
              data: params)
          .then((value) => DioBaseResponse(
              statusCode: value.statusCode,
              message: value.message,
              data: value.data));

  Future<DioBaseResponse> _returnProcurementApi(
          {required Map<String, dynamic>? params}) async =>
      apiConsumer
          .post(
              url: endPointConstant.returnProcurementUrl,
              headers: endPointConstant.defaultHeader,
              data: params)
          .then((value) => DioBaseResponse(
              statusCode: value.statusCode,
              message: value.message,
              data: value.data));
}
