import 'package:get_it/get_it.dart';
import 'package:pits_app/core/data/singletons/dio.dart';
import 'package:pits_app/core/data/singletons/storage.dart';


final serviceLocator = GetIt.I;

Future<void> setupLocator() async {
  await StorageRepository.getInstance();
  serviceLocator.registerLazySingleton(DioSettings.new);
  serviceLocator.registerLazySingleton(AuthDioSettings.new);

}
