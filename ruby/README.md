# Benchmark Rate API - Ruby Gem

Benchmark Rate retrieves current risk-free reference rates across major currencies, covering SOFR, SONIA, ESTR, TONA, and SARON. Pass a rate symbol to receive the latest percentage rate, effective date, currency, region, and daily change direction.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_benchmarkrate'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_benchmarkrate
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_benchmarkrate'

# Initialize the client
client = APIVerve::Benchmarkrate::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ rate: "SOFR" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ rate: "SOFR" })
  puts response["data"]
rescue APIVerve::Benchmarkrate::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Benchmarkrate::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Benchmarkrate::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/benchmarkrate?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/benchmarkrate?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/benchmarkrate?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
