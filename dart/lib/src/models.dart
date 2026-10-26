/// Response models for the Benchmark Rate API.

/// API Response wrapper.
class BenchmarkrateResponse {
  final String status;
  final dynamic error;
  final BenchmarkrateData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  BenchmarkrateResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory BenchmarkrateResponse.fromJson(Map<String, dynamic> json) => BenchmarkrateResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? BenchmarkrateData.fromJson(json['data']) : null,
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

/// Response data for the Benchmark Rate API.

class BenchmarkrateData {
  String? rate;
  String? name;
  String? currency;
  String? region;
  String? administrator;
  num? value;
  String? date;
  String? lastUpdated;
  num? change1d;
  String? changeDirection;
  num? previousValue;
  String? previousDate;

  BenchmarkrateData({
    this.rate,
    this.name,
    this.currency,
    this.region,
    this.administrator,
    this.value,
    this.date,
    this.lastUpdated,
    this.change1d,
    this.changeDirection,
    this.previousValue,
    this.previousDate,
  });

  factory BenchmarkrateData.fromJson(Map<String, dynamic> json) => BenchmarkrateData(
      rate: json['rate'],
      name: json['name'],
      currency: json['currency'],
      region: json['region'],
      administrator: json['administrator'],
      value: json['value'],
      date: json['date'],
      lastUpdated: json['lastUpdated'],
      change1d: json['change1d'],
      changeDirection: json['changeDirection'],
      previousValue: json['previousValue'],
      previousDate: json['previousDate'],
    );
}

class BenchmarkrateRequest {
  String rate;

  BenchmarkrateRequest({
    required this.rate,
  });

  Map<String, dynamic> toJson() => {
      'rate': rate,
    };
}
