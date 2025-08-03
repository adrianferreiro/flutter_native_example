import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_native_example/features/location/application/controllers/location_controller.dart';
import 'package:flutter_native_example/features/location/application/states/location_state.dart';
import 'package:flutter_native_example/features/location/application/usecases/get_current_location_usecase.dart';
import 'package:flutter_native_example/features/location/data/datasources/location_datasource_provider.dart';
import 'package:flutter_native_example/features/location/data/repositories/location_repository_impl.dart';
import 'package:flutter_native_example/features/location/domain/repositories/location_repository.dart';

final locationRepositoryProvider = Provider<LocationRepository>((ref) {
  final datasource = ref.watch(locationDatasourceProvider);
  return LocationRepositoryImpl(datasource);
});

final getCurrentLocationUsecaseProvider = Provider<GetCurrentLocationUseCase>((
  ref,
) {
  final repository = ref.watch(locationRepositoryProvider);
  return GetCurrentLocationUseCase(repository: repository);
});

final locationControllerProvider =
    StateNotifierProvider<LocationController, LocationState>((ref) {
      final useCase = ref.watch(getCurrentLocationUsecaseProvider);
      return LocationController(useCase);
    });
