/// Response models for the Benchmark Rate API.

/// API Response wrapper.
class BenchmarkrateResponse {
  final String status;
  final dynamic error;
  final BenchmarkrateData? data;

  BenchmarkrateResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory BenchmarkrateResponse.fromJson(Map<String, dynamic> json) => BenchmarkrateResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? BenchmarkrateData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Benchmark Rate API.

class BenchmarkrateData {
  String? rate;
  String? name;
  String? currency;
  String? region;
  String? administrator;
  double? value;
  String? date;
  String? lastUpdated;

  BenchmarkrateData({
    this.rate,
    this.name,
    this.currency,
    this.region,
    this.administrator,
    this.value,
    this.date,
    this.lastUpdated,
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
