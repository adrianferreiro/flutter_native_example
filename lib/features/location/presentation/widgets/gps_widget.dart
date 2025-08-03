import 'package:flutter/material.dart';
import 'package:flutter_native_example/features/location/application/providers/location_providers.dart';
import 'package:flutter_native_example/features/location/application/states/location_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GpsWidget extends ConsumerWidget {
  const GpsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(locationControllerProvider);
    final controller = ref.read(locationControllerProvider.notifier);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        state is LocationInitial
            ? const Text('Presioná el botón para obtener la ubicación')
            : state is LocationLoading
            ? const CircularProgressIndicator()
            : state is LocationLoaded
            ? Text(
                'Latitud: ${state.location.latitude}\nLongitud: ${state.location.longitude}\nFecha: ${state.location.timestamp}\nCiudad: ${state.location.city ?? 'vacío'}',
                textAlign: TextAlign.center,
              )
            : state is LocationError
            ? Text(state.message, style: const TextStyle(color: Colors.red))
            : const SizedBox.shrink(),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => controller.fetchLocation(),
          child: const Text('Obtener ubicación'),
        ),
      ],
    );
  }
}
