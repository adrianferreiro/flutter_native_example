import 'package:flutter/material.dart';
import 'package:flutter_native_example/features/location/presentation/widgets/gps_widget.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  static const name = 'location-screen';
  static const path = '/location';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ubicación actual')),
      body: Center(child: GpsWidget()),
    );
  }
}
