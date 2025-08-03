import 'package:flutter_native_example/features/location/data/datasources/location_datasource.dart';
import 'package:flutter_native_example/features/location/domain/entities/location_entitiy.dart';
import 'package:flutter_native_example/features/location/domain/repositories/location_repository.dart';

class LocationRepositoryImpl implements LocationRepository {
  final LocationDatasource datasource;

  LocationRepositoryImpl(this.datasource);

  @override
  Future<LocationEntity> getCurrentLocation() {
    return datasource.getCurrentLocation();
  }
}
