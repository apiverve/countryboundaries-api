from setuptools import setup, find_packages

setup(
    name='apiverve_countryboundaries',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Country Boundaries retrieves GeoJSON border outlines for any country by its two-letter ISO code. Each response includes the country name, geometry type, and boundary coordinate pairs ready for mapping layers.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/countryboundaries?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
