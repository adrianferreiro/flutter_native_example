class LocationModel {
  final double latitude;
  final double longitude;
  final String? city;

  const LocationModel({
    required this.latitude,
    required this.longitude,
    this.city,
  });

  factory LocationModel.fromMap(Map<dynamic, dynamic> map) {
    return LocationModel(
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
      city: map['city'] as String?,
    );
  }

  Map<String, dynamic> toMap() {
    return {'latitude': latitude, 'longitude': longitude, 'city': city};
  }
}
