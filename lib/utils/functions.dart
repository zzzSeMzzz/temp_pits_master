import 'dart:ui';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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