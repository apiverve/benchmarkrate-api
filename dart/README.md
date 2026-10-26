# Benchmark Rate API - Dart/Flutter Client

Benchmark Rate retrieves current risk-free reference rates across major currencies, covering SOFR, SONIA, ESTR, TONA, and SARON. Pass a rate symbol to receive the latest percentage rate, effective date, currency, region, and daily change direction.

[![pub package](https://img.shields.io/pub/v/apiverve_benchmarkrate.svg)](https://pub.dev/packages/apiverve_benchmarkrate)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Benchmark Rate API](https://apiverve.com/marketplace/benchmarkrate?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_benchmarkrate: ^1.2.3
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
    "value": 4.32,
    "date": "2026-02-04",
    "lastUpdated": "2026-02-05T05:00:00.000Z",
    "change1d": -0.01,
    "changeDirection": "down",
    "previousValue": 4.33,
    "previousDate": "2026-02-03"
  }
}
```

## API Reference

- **API Home:** [Benchmark Rate API](https://apiverve.com/marketplace/benchmarkrate?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/benchmarkrate](https://docs.apiverve.com/ref/benchmarkrate?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
