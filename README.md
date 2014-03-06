# puppet-spark
[![Build Status](https://travis-ci.org/deric/puppet-spark.png)](https://travis-ci.org/deric/puppet-spark)

This is puppet module for [spark](http://spark-project.org) integration. For using this module you have to build a binary package for your platform (deb, rpm, ...).

## Hiera support

* setting Mesos address, you can provide either IP address and port

  ```yaml
  spark::mesos_master: "192.168.1.1:5050"
  ```
  ZooKeeper URL
  ```yaml
  spark::mesos_master: "zk://192.168.1.1:2181"
  ```
  or some other fact

  ```yaml
  spark::mesos_master: "%{mesos::zookeeper}"
  ```

* providing custom IP address fact

  ```yaml
  spark::local_ip: "%{::ipaddress_eth0}"
  ```



License
-------
Apache License, Version 2.0


