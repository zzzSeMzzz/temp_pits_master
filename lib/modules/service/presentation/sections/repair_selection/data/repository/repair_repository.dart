import 'package:pits_app/core/data/repo/base_repoitory.dart';
import '../../../../../../../../core/data/singletons/dio.dart';
import '../../../../../../../../core/data/singletons/service_locator.dart';


class RepairRepository extends BaseRepository {
  //final _client = serviceLocator<ApiSecondDioSettings>().dio;
  final _service = serviceLocator<ApiSecondDioSettings>();


  /*Future<ApiResponse<CarRegResponse>> regCar(CareRegRequest car) async {
    try {
      final data = await _service.getPostApiResponse(
        "api/pits/cars/register",
        car.toJson(),
      );

      final response = CarRegResponse.fromJson(data);
      debugPrint("CarRepository:: regCar success");
      return Success(response);
    } on DioException catch (e) {
      debugPrint("CarRepository:: regCar vehicles ${e.toString()}");
      return Error(e.message ?? "regCar vehicles");
    } catch (e) {
      debugPrint("CarRepository:: regCar vehicles ${e.toString()}");
      return Error(e.toString());
    }
  }*/
}
