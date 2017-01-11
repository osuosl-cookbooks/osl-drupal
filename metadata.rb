name             'osl-drupal'
maintainer       'Oregon State University'
maintainer_email 'systems@osuosl.org'
license          'Apache 2.0'
issues_url       'https://github.com/osuosl-cookbooks/osl-drupal/issues'
source_url       'https://github.com/osuosl-cookbooks/osl-drupal'
description      'Installs/Configures osl-drupal'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.2'
depends          'php'
depends          'yum', '>= 3.0.0'
depends          'yum-epel'

supports         'centos', '~> 6.0'
