# Class: spark::install
#
# This module manages Spark installation from binary package (e.g. deb package)
#  A deb package could be build with Maven3 https://github.com/mesos/spark/blob/master/docs/building-with-maven.md
#
#  $ mvn -Phadoop2,deb clean install
#
# Parameters: None
#
# Actions: None
#
# Requires:
#
# Sample Usage: include spark::install
#
class spark::install(
  $package = 'apache-spark',
  $version = '0.9.0',
  ) {
  package { [$package]:
    ensure => $version
  }
}
