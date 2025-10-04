import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pits_app/core/data/singletons/storage.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/auth_screen.dart';
import 'package:pits_app/utils/utils.dart';

class AuthInterceptor extends Interceptor {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    debugPrint('AuthInterceptor: Response status code: ${response.statusCode}');

    if (response.statusCode == 401) {
      debugPrint('AuthInterceptor: 401 detected, logging out and redirecting');

      // Сбрасываем авторизацию
      StorageRepository.logout();

      // Получаем текущий контекст и перенаправляем на экран авторизации
      final context = navigatorKey.currentContext;
      if (context != null) {
        debugPrint('AuthInterceptor: Context found, redirecting to auth screen');

        // Показываем уведомление об истечении сессии
        Utils.flushBarErrorMessage(
          'Su sesión ha expirado. Por favor, inicie sesión nuevamente.',
          context,
        );

        // Очищаем весь стек навигации и переходим на экран авторизации
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const AuthScreen()),
          (route) => false,
        );
      } else {
        debugPrint('AuthInterceptor: No context found');
      }

      // Выбрасываем исключение, чтобы репозиторий получил ошибку
      handler.reject(
        DioException(
          requestOptions: response.requestOptions,
          response: response,
          type: DioExceptionType.badResponse,
          error: 'Unauthorized',
        ),
      );
      return;
    }

    // Продолжаем обработку ответа
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      // Сбрасываем авторизацию
      StorageRepository.logout();

      // Получаем текущий контекст и перенаправляем на экран авторизации
      final context = navigatorKey.currentContext;
      if (context != null) {
        // Показываем уведомление об истечении сессии
        Utils.flushBarErrorMessage(
          'Su sesión ha expirado. Por favor, inicie sesión nuevamente.',
          context,
        );

        // Очищаем весь стек навигации и переходим на экран авторизации
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const AuthScreen()),
          (route) => false,
        );
      }
    }

    // Продолжаем обработку ошибки
    handler.next(err);
  }
}
