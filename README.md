# Hadoop

## Build docker images

Before run the following docker container, you need build the images first. You can find the related Dockerfile und the subfolders.

## Run hdfs namenode docker container

Run the docker container via provided script to assign a real IP address.

```
$ git clone https://github.com/nalandas/operation.git
$ cd operation/scripts
$ ./docker-cdh-namenode eth0 eth1 192.168.200.3:5000/hadoop-cdh5-hdfs-namenode:0.0.1 192.168.200.23/24@192.168.200.1
```

TODO: Support namenode HA

## Run hdfs datanode docker container

```
$ git clone https://github.com/nalandas/operation.git
$ cd operation/scripts
$ ./docker-cdh-datanode 192.168.200.23 8020 192.168.200.24/24@192.168.200.1 3 eth0 eth1 192.168.200.3:5000/hadoop-cdh5-hdfs-datanode:0.0.1
```
