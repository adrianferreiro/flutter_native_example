import 'package:flutter_native_example/features/location/domain/entities/location_entitiy.dart';

abstract class LocationDatasource {
  Future<LocationEntity> getCurrentLocation();
}
