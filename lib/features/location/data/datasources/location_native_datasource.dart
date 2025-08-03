import 'package:flutter_native_example/core/native/gps_service.dart';
import 'package:flutter_native_example/features/location/data/datasources/location_datasource.dart';
import 'package:flutter_native_example/features/location/data/mappers/location_model_mapper.dart';
import 'package:flutter_native_example/features/location/data/models/location_model.dart';
import 'package:flutter_native_example/features/location/domain/entities/location_entitiy.dart';

class LocationNativeDatasource implements LocationDatasource {
  final GpsService gpsService;

  LocationNativeDatasource({required this.gpsService});

  @override
  Future<LocationEntity> getCurrentLocation() async {
    final result = await gpsService.getCurrentLocation();
    if (result != null) {
      final model = LocationModel.fromMap(result);
      final entity = model.toEntity();
      return entity;
    } else {
      throw Exception('No se pudo obtener la ubicación.');
    }
  }
}
