from setuptools import setup

setup(name='OsuDL',
      version='5.0',
      description='Osu! Reverse Proxy and Beatmap Downloader',
      author='Tydus Ken',
      author_email='Tydus@Tydus.org',
      url='http://Tydus.org/osudl',
      install_requires=[
          'mongoengine>=0.5',
          'tornado>=2.0',
          ],
     )
