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
      $spark_package = hiera("spark_package")
      $spark_version = hiera("spark_version")
      $scala_version = hiear("scala_version")
    ) {
    
 spark::requires { "$name-requires-scala": package => 'scala', ensure => $scala_version }
   
  
  package { [$spark_package]:
    ensure => $spark_version
  }

  define spark::requires ( $ensure='installed', $package ) {
   if defined( Package[$package] ) {
    debug("$package already installed")
   } else {
    package { $package: ensure => $ensure }
   }
 } 
  
}

