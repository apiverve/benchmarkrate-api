# Benchmark Rate API - PHP Package

Benchmark Rate is a tool for retrieving current risk-free reference rates that replaced LIBOR. It returns rates for SOFR (US), SONIA (UK), ESTR (EU), TONA (Japan), and SARON (Switzerland).

## Installation

Install via Composer:

```bash
composer require apiverve/benchmarkrate
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Benchmarkrate\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['rate' => 'SOFR']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Benchmarkrate\Client;
use APIVerve\Benchmarkrate\Exceptions\APIException;
use APIVerve\Benchmarkrate\Exceptions\ValidationException;

try {
    $response = $client->execute(['rate' => 'SOFR']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/benchmarkrate?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://benchmarkrate.apiverve.com?utm_source=php&utm_medium=readme](https://benchmarkrate.apiverve.com?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
