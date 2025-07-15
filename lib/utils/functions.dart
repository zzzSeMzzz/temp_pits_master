import 'package:geolocator/geolocator.dart';
import 'package:google_maps_webservice/geocoding.dart';



Future<Position> getCurrentLocation() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
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


Future<String> getRegionId(double latitude, double longitude) async {
  final googleMapsGeocoding = GoogleMapsGeocoding(apiKey: "AIzaSyAYd7e5aw6NsShXv5vmNLzjSm-XL6f7gNg");
  final response = await googleMapsGeocoding.searchByLocation(
    Location(lat: latitude, lng: longitude),
    language: 'en',
  );

  if (response.status == "OK" && response.results.isNotEmpty) {
    // Find the administrative_area_level_1 (e.g., state, province) component
    for (var result in response.results) {
      for (var component in result.addressComponents) {
        if (component.types.contains('administrative_area_level_1')) {
          return component.shortName; // Or use long_name for full name
        }
      }
    }
    return "Region ID not found"; // Or handle the case where it's not found
  } else {
    return "Error fetching region ID: ${response.errorMessage}"; // Or handle the error
  }
}

/*Future<BitmapDescriptor> getMarkerIconFromSvg() async {
  final String svgString =
  await rootBundle.loadString('assets/icons/marker_icon.svg');
  final DrawableRoot svgDrawableRoot =
  await svg.fromSvgString(svgString, svgString);
  final Picture picture =
  svgDrawableRoot.toPicture(size: const Size(64, 64));
  final ui.Image image = await picture.toImage(64, 64);
  final ByteData? bytes =
  await image.toByteData(format: ui.ImageByteFormat.png);
  return BitmapDescriptor.fromBytes(bytes!.buffer.asUint8List());
}*/