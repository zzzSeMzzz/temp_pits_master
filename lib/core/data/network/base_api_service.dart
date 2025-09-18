import 'package:dio/dio.dart';

abstract class BaseApiServices {
  Future<dynamic> getGetApiResponse(
      String url, {
        Map<String, dynamic>? queryParameters,
        CancelToken? cancelToken
      }
  );
  Future<dynamic> getPostApiResponse(String url, dynamic data);
  //Future<dynamic> getPostApiResponseFormData(String url, dynamic data);
}
