import 'package:flutter_native_example/core/native/gps_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final gpsServiceProvider = Provider<GpsService>((ref) {
  return GpsService();
});
