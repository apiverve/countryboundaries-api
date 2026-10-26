/// Response models for the Country Boundaries API.

/// API Response wrapper.
class CountryboundariesResponse {
  final String status;
  final dynamic error;
  final CountryboundariesData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  CountryboundariesResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory CountryboundariesResponse.fromJson(Map<String, dynamic> json) => CountryboundariesResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CountryboundariesData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Country Boundaries API.

class CountryboundariesData {
  List<CountryboundariesDataFeaturesItem>? features;
  String? type;

  CountryboundariesData({
    this.features,
    this.type,
  });

  factory CountryboundariesData.fromJson(Map<String, dynamic> json) => CountryboundariesData(
      features: (json['features'] as List?)?.map((e) => CountryboundariesDataFeaturesItem.fromJson(e)).toList(),
      type: json['type'],
    );
}

class CountryboundariesDataFeaturesItem {
  CountryboundariesDataFeaturesItemGeometry? geometry;
  String? id;
  CountryboundariesDataFeaturesItemProperties? properties;
  String? type;

  CountryboundariesDataFeaturesItem({
    this.geometry,
    this.id,
    this.properties,
    this.type,
  });

  factory CountryboundariesDataFeaturesItem.fromJson(Map<String, dynamic> json) => CountryboundariesDataFeaturesItem(
      geometry: json['geometry'] != null ? CountryboundariesDataFeaturesItemGeometry.fromJson(json['geometry']) : null,
      id: json['id'],
      properties: json['properties'] != null ? CountryboundariesDataFeaturesItemProperties.fromJson(json['properties']) : null,
      type: json['type'],
    );
}

class CountryboundariesDataFeaturesItemGeometry {
  List<CountryboundariesDataFeaturesItemGeometryCoordinatesItem>? coordinates;
  String? type;

  CountryboundariesDataFeaturesItemGeometry({
    this.coordinates,
    this.type,
  });

  factory CountryboundariesDataFeaturesItemGeometry.fromJson(Map<String, dynamic> json) => CountryboundariesDataFeaturesItemGeometry(
      coordinates: (json['coordinates'] as List?)?.map((e) => CountryboundariesDataFeaturesItemGeometryCoordinatesItem.fromJson(e)).toList(),
      type: json['type'],
    );
}

class CountryboundariesDataFeaturesItemGeometryCoordinatesItem {
  List<CountryboundariesDataFeaturesItemGeometryCoordinatesItem0Item>? 0;

  CountryboundariesDataFeaturesItemGeometryCoordinatesItem({
    this.0,
  });

  factory CountryboundariesDataFeaturesItemGeometryCoordinatesItem.fromJson(Map<String, dynamic> json) => CountryboundariesDataFeaturesItemGeometryCoordinatesItem(
      0: (json['0'] as List?)?.map((e) => CountryboundariesDataFeaturesItemGeometryCoordinatesItem0Item.fromJson(e)).toList(),
    );
}

class CountryboundariesDataFeaturesItemGeometryCoordinatesItem0Item {
  num? 0;
  num? 1;

  CountryboundariesDataFeaturesItemGeometryCoordinatesItem0Item({
    this.0,
    this.1,
  });

  factory CountryboundariesDataFeaturesItemGeometryCoordinatesItem0Item.fromJson(Map<String, dynamic> json) => CountryboundariesDataFeaturesItemGeometryCoordinatesItem0Item(
      0: json['0'],
      1: json['1'],
    );
}

class CountryboundariesDataFeaturesItemProperties {
  String? name;

  CountryboundariesDataFeaturesItemProperties({
    this.name,
  });

  factory CountryboundariesDataFeaturesItemProperties.fromJson(Map<String, dynamic> json) => CountryboundariesDataFeaturesItemProperties(
      name: json['name'],
    );
}

class CountryboundariesRequest {
  String country;

  CountryboundariesRequest({
    required this.country,
  });

  Map<String, dynamic> toJson() => {
      'country': country,
    };
}
