import 'package:flutter/services.dart';

class GpsService {
  static const _channel = MethodChannel('com.empresa.app/gps');

  Future<Map<String, double>?> getCurrentLocation() async {
    try {
      final result = await _channel.invokeMethod<Map>('getCurrentLocation');
      if (result != null) {
        return {
          'latitude': result['latitude'] as double,
          'longitude': result['longitude'] as double,
        };
      }
    } on PlatformException catch (e) {
      print('Error getting location: ${e.message}');
    }
    return null;
  }
}
