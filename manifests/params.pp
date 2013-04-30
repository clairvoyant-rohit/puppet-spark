class spark::params {
  
  $spark_package = hiera('spark_package', 'spark-hadoop1')
  $spark_version = hiera('spark_version', '0.8.0+SNAPSHOT-f1f92c88')
  $spark_home    = hiera('spark_home', '/usr/share/spark-hadoop1')
  
  $scala_version = hiera('spark_version', '2.9.2+dfsg-1')
  $scala_home    = hiera('scala_home', '/usr')
  $scala_lib     = hiera('scala_lib', '/usr/share/java') 
  
  $mesos_lib     = hiera('mesos_lib', '/usr/local/lib/libmesos.so')
  
}
