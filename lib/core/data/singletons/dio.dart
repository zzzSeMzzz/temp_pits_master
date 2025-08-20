import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pits_app/assets/constants/app_constants.dart';
import 'package:pits_app/core/data/singletons/storage.dart';

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



class AuthDioSettings {
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


  AuthDioSettings() {
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
