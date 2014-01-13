class spark::params {

  $spark_package = hiera('spark_package', 'apache-spark')
  $spark_version = hiera('spark_version', '0.8.0')
  $spark_home    = hiera('spark_home', '/usr/share/spark')

  $scala_version = hiera('scala_version', '2.9.3-400')
  $scala_home    = hiera('scala_home', '/usr')
  $scala_lib     = hiera('scala_lib', '/usr/share/java')

  $mesos_lib     = hiera('mesos_lib', '/usr/local/lib/libmesos.so')

}
