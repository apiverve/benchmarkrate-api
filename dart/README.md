# Benchmark Rate API - Dart/Flutter Client

Benchmark Rate is a tool for retrieving current risk-free reference rates that replaced LIBOR. It returns rates for SOFR (US), SONIA (UK), ESTR (EU), TONA (Japan), and SARON (Switzerland).

[![pub package](https://img.shields.io/pub/v/apiverve_benchmarkrate.svg)](https://pub.dev/packages/apiverve_benchmarkrate)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Benchmark Rate API](https://apiverve.com/marketplace/benchmarkrate?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_benchmarkrate: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_benchmarkrate/apiverve_benchmarkrate.dart';

void main() async {
  final client = BenchmarkrateClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'rate': 'SOFR'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "rate": "SOFR",
    "name": "Secured Overnight Financing Rate",
    "currency": "USD",
    "region": "United States",
    "administrator": "Federal Reserve Bank of New York",
    "value": 3.65,
    "date": "2026-02-04",
    "lastUpdated": "2026-02-05T05:00:00.000Z"
  }
}
```

## API Reference

- **API Home:** [Benchmark Rate API](https://apiverve.com/marketplace/benchmarkrate?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/benchmarkrate](https://docs.apiverve.com/ref/benchmarkrate?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
