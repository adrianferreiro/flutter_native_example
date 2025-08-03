import 'package:flutter_native_example/core/native/gps_service_provider.dart';
import 'package:flutter_native_example/features/location/data/datasources/location_datasource.dart';
import 'package:flutter_native_example/features/location/data/datasources/location_native_datasource.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final locationDatasourceProvider = Provider<LocationDatasource>((ref) {
  final gpsService = ref.watch(gpsServiceProvider);
  return LocationNativeDatasource(gpsService: gpsService);
});
