class LocationEntity {
  final double latitude;
  final double longitude;
  final String? city;
  final DateTime? timestamp;

  const LocationEntity({
    required this.latitude,
    required this.longitude,
    this.city,
    this.timestamp,
  });

  @override
  String toString() =>
      'LocationEntity(latitude: $latitude, longitude: $longitude, timestamp: $timestamp)';
}
