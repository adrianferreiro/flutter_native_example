import 'package:flutter_native_example/features/location/domain/entities/location_entitiy.dart';

abstract class LocationRepository {
  /// Obtiene la ubicación actual del dispositivo.
  Future<LocationEntity> getCurrentLocation();
}
