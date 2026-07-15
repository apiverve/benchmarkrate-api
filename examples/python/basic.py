"""
Benchmark Rate API - Basic Usage Example

This example demonstrates the basic usage of the Benchmark Rate API.
API Documentation: https://docs.apiverve.com/ref/benchmarkrate
"""

import os
import requests
import json

API_KEY = os.getenv('APIVERVE_API_KEY', 'YOUR_API_KEY_HERE')
API_URL = 'https://api.apiverve.com/v1/benchmarkrate'

def call_benchmarkrate_api():
    """
    Make a GET request to the Benchmark Rate API
    """
    try:
        # Query parameters
        params &#x3D; {&#x27;rate&#x27;: &#x27;SOFR&#x27;}

        headers = {
            'x-api-key': API_KEY
        }

        response = requests.get(API_URL, headers=headers, params=params)

        # Raise exception for HTTP errors
        response.raise_for_status()

        data = response.json()

        # Check API response status
        if data.get('status') == 'ok':
            print('✓ Success!')
            print('Response data:', json.dumps(data['data'], indent=2))
            return data['data']
        else:
            print('✗ API Error:', data.get('error', 'Unknown error'))
            return None

    except requests.exceptions.RequestException as e:
        print(f'✗ Request failed: {e}')
        return None

if __name__ == '__main__':
    print('📤 Calling Benchmark Rate API...\n')

    result = call_benchmarkrate_api()

    if result:
        print('\n📊 Final Result:')
        print(json.dumps(result, indent=2))
    else:
        print('\n✗ API call failed')
