import 'dart:io';

import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pits_app/assets/constants/app_constants.dart';
import 'package:pits_app/core/data/network/base_api_service.dart';
import 'package:pits_app/core/data/singletons/storage.dart';

import '../network/api_exceptions.dart';

class DioSettings {
  BaseOptions _dioBaseOptions = BaseOptions(
    baseUrl: AppConstants.BASE_URL,
    connectTimeout: const Duration(seconds: 35),
    receiveTimeout: const Duration(seconds: 33),
    followRedirects: false,
    headers: <String, dynamic>{
      'Accept-Language': StorageRepository.getString('language', defValue: 'uz')
    },
    validateStatus: (status) => status != null && status <= 500,
  );

  void setBaseOptions({String? lang}) {
    _dioBaseOptions = BaseOptions(
      baseUrl: AppConstants.BASE_URL,
      connectTimeout: const Duration(seconds: 35),
      receiveTimeout: const Duration(seconds: 33),
      headers: <String, dynamic>{'Accept-Language': lang},
      followRedirects: false,
      validateStatus: (status) => status != null && status <= 500,
    );
  }

  // final _dio = serviceLocator<DioSettings>().dio; ///sample
  BaseOptions get dioBaseOptions => _dioBaseOptions;

  late final Dio _dio;


  DioSettings() {
    _dio = Dio(_dioBaseOptions);

    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        final token = StorageRepository.getString(StorageRepository.accessTokenKey);
        if (token.isNotEmpty) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        return handler.next(options);
      },
    ));

    _dio.interceptors.add(
      AwesomeDioInterceptor(
        // Disabling headers and timeout would minimize the logging output.
        // Optional, defaults to true
        logRequestTimeout: false,
        logRequestHeaders: false,
        logResponseHeaders: false,

        // Optional, defaults to the 'log' function in the 'dart:developer' package.
        logger: debugPrint,
      ),
    );

  }

  Dio get dio => _dio;
}



class ApiSecondDioSettings extends BaseApiServices {
  BaseOptions _dioBaseOptions = BaseOptions(
    baseUrl: AppConstants.BASE_URL_AUTH,
    connectTimeout: const Duration(seconds: 35),
    receiveTimeout: const Duration(seconds: 33),
    followRedirects: false,
    headers: <String, dynamic>{
      'Accept-Language': StorageRepository.getString('language', defValue: 'uz')
    },
    validateStatus: (status) => status != null && status <= 500,
  );

  void setBaseOptions({String? lang}) {
    _dioBaseOptions = BaseOptions(
      baseUrl: AppConstants.BASE_URL,
      connectTimeout: const Duration(seconds: 35),
      receiveTimeout: const Duration(seconds: 33),
      headers: <String, dynamic>{'Accept-Language': lang},
      followRedirects: false,
      validateStatus: (status) => status != null && status <= 500,
    );
  }

  // final _dio = serviceLocator<DioSettings>().dio; ///sample
  BaseOptions get dioBaseOptions => _dioBaseOptions;

  late final Dio _dio;


  ApiSecondDioSettings() {
    _dio = Dio(_dioBaseOptions);

    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        final token = StorageRepository.getString(StorageRepository.accessTokenKey);
        if (token.isNotEmpty) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        return handler.next(options);
      },
    ));

    _dio.interceptors.add(
      AwesomeDioInterceptor(
        // Disabling headers and timeout would minimize the logging output.
        // Optional, defaults to true
        logRequestTimeout: false,
        logRequestHeaders: false,
        logResponseHeaders: false,

        // Optional, defaults to the 'log' function in the 'dart:developer' package.
        logger: debugPrint,
      ),
    );
  }

  Dio get dio => _dio;


  @override
  Future getGetApiResponse(
      String url, {
        Map<String, dynamic>? queryParameters,
        CancelToken? cancelToken
      }
      ) async {
    dynamic responseJson;
    try {
      final response = await _dio.get(
          url,
          queryParameters: queryParameters,
          cancelToken: cancelToken
      );
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    } on DioException catch (e) {
      debugPrint("DIO exception");

      throw Exception(_getMessageFromResponse(e));
    }

    return responseJson;
  }

  String _getMessageFromResponse(DioException ex) {
    String? message;
    final data = ex.response?.data;
    if(data != null) {
      try {
        if (data is Map<String, dynamic>) {
          final err = data['error'];
          if (err is String && err.isNotEmpty) {
            message = err;
          }
        }
      } catch (e) {
        message = ex.message;
      }
    } else {
      message = ex.message;
    }
    return message ?? "Unknown server exeption";
  }

  @override
  Future getPostApiResponse(
      String url,
      dynamic data,
      {
        Map<String, dynamic>? queryParameters,
        CancelToken? cancelToken
      }
      ) async {
    //Map<String,String> header = {'Content-Type':'application/json'};
    dynamic responseJson;
    try {
      Response response = await _dio.post(
          url,
          data: data,
          queryParameters: queryParameters,
          cancelToken: cancelToken
      );
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    } on DioException catch (e) {
      debugPrint("DIO exception");

      throw Exception(_getMessageFromResponse(e));
    }

    return responseJson;
  }

  dynamic returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      /*dynamic responseJson = jsonDecode(response.data);
        debugPrint("success_json: $responseJson");*/
        return response.data;
      case 400:
        throw BadRequestException(_getErrorFromResponse(response, "BadRequestException"));
    //case 500:
      case 401:
        throw UnauthorizedException(_getErrorFromResponse(response, "UnauthorizedException"));
      default:
        throw FetchDataException(_getErrorFromResponse(response, "FetchDataException"));
    }
  }

  String _getErrorFromResponse(Response response, String def) {
    String error = def;
    if(response.data is Map<String, dynamic>) {

      final err = response.data['error'];
      if (err is String && err.isNotEmpty) {
        error = err;
      }
      return error;
    } else {
      throw error;
    }
  }

}
