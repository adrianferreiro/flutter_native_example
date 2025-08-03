import 'package:flutter_native_example/features/location/domain/entities/location_entitiy.dart';
import 'package:flutter_native_example/features/location/domain/repositories/location_repository.dart';

class GetCurrentLocationUseCase {
  final LocationRepository repository;

  GetCurrentLocationUseCase({required this.repository});

  Future<LocationEntity> call() {
    return repository.getCurrentLocation();
  }
}
