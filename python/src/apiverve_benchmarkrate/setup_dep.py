from setuptools import setup, find_packages

setup(
    name='apiverve_benchmarkrate',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Benchmark Rate retrieves current risk-free reference rates across major currencies, covering SOFR, SONIA, ESTR, TONA, and SARON. Pass a rate symbol to receive the latest percentage rate, effective date, currency, region, and daily change direction.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/benchmarkrate?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
