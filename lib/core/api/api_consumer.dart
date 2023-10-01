import 'package:dio/dio.dart';

import '../dio_response/dio_response.dart';

abstract class ApiConsumer {
  Future<DioBaseResponse> get(
      {Duration? cacheAge,
      Map<String, dynamic>? headers,
      Map<String, dynamic>? params,
      required String url});

  Future<DioBaseResponse> patch(
      {required Map<String, dynamic> data,
      Map<String, dynamic>? headers,
      Map<String, dynamic>? params,
      required String url});

  Future<DioBaseResponse> post(
      {Duration? cacheAge,
      Map<String, dynamic>? data,
      Map<String, dynamic>? headers,
      Map<String, dynamic>? params,
      required String url});

  Future<DioBaseResponse> put(
      {required Map<String, dynamic> data,
      Map<String, dynamic>? headers,
      Map<String, dynamic>? params,
      required String url});

  Future<DioBaseResponse> delete(
      {Map<String, dynamic>? headers,
      Map<String, dynamic>? params,
      required String url});

  Future<DioBaseResponse> downloadFile(
      {Map<String, dynamic>? headers,
      ProgressCallback? progressCallback,
      required String url,
      required savePath});
}
