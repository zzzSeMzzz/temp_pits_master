import 'package:geolocator/geolocator.dart';

Future<Position> getCurrentLocation() async {
  bool isPermissionGranted = await getWhetherPermissionGranted();
  if (isPermissionGranted) {
    try {
      return await Geolocator.getCurrentPosition();
    } on Exception catch (e) {
      throw Exception('Unable to get location: ${e.toString()}');
    }
  } else {
    throw Exception(
        'Unable to get location: the location permission is not granted');
  }
}

Future<bool> getWhetherPermissionGranted() async {
  try {
    final geoPermission = await Geolocator.checkPermission();
    if (geoPermission == LocationPermission.denied) {
      await Geolocator.requestPermission();
    }
    if (geoPermission == LocationPermission.always ||
        geoPermission == LocationPermission.whileInUse) {
      return true;
    } else {
      throw Exception('Unable to get permission: $geoPermission');
    }
  } on Exception catch (e) {
    throw Exception('Unable to get permission: ${e.toString()}');
  }
}
