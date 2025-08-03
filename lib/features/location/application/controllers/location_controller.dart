import 'package:flutter_native_example/features/location/application/states/location_state.dart';
import 'package:flutter_native_example/features/location/application/usecases/get_current_location_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocationController extends StateNotifier<LocationState> {
  final GetCurrentLocationUseCase getCurrentLocation;

  LocationController(this.getCurrentLocation) : super(LocationInitial());

  Future<void> fetchLocation() async {
    state = LocationLoading();
    try {
      final location = await getCurrentLocation();
      state = LocationLoaded(location);
    } catch (e) {
      state = LocationError('Error al obtener la ubicación: $e');
    }
  }
}
