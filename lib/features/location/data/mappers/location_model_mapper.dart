import 'package:flutter_native_example/features/location/data/models/location_model.dart';
import 'package:flutter_native_example/features/location/domain/entities/location_entitiy.dart';

extension LocationModelMapper on LocationModel {
  LocationEntity toEntity() {
    return LocationEntity(
      latitude: latitude,
      longitude: longitude,
      city: city,
      timestamp: DateTime.now(),
    );
  }
}
