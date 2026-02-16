from setuptools import setup, find_packages

setup(
    name='apiverve_benchmarkrate',
    version='1.1.14',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Benchmark Rate is a tool for retrieving current risk-free reference rates that replaced LIBOR. It returns rates for SOFR (US), SONIA (UK), ESTR (EU), TONA (Japan), and SARON (Switzerland).',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/benchmarkrate?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
