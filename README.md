# Hadoop

## Build docker images

Before run the following docker container, you need build the images first. You can find the related Dockerfile und the subfolders.

## Run hdfs namenode docker container

Run the docker container via provided script to assign a real IP address.

```
$ git clone https://github.com/nalandas/operation.git
$ cd operation/scripts
$ sudo ./docker-cdh-namenode -o eth0 -c eth1 -m 192.168.200.3:5000/hadoop-cdh5-hdfs-namenode:0.0.1 -i 192.168.200.23/24@192.168.200.1 -v /data/hdfs/nn
```

Or run the following command to use hosts ip for port mapping

```
$ sudo ./docker-cdh-namenode -v /data/hdfs/nn
```

TODO: Support namenode HA

## Run hdfs datanode docker container

Run the docker container via provided script to assign a real IP address.

```
$ git clone https://github.com/nalandas/operation.git
$ cd operation/scripts
$ sudo ./docker-cdh-datanode -a 192.168.200.23 -p 8020 -i 192.168.200.24/24@192.168.200.1 -n 3 -o eth0 -c eth1 -m 192.168.200.3:5000/hadoop-cdh5-hdfs-datanode:0.0.1 -v /data/hdfs/dn
```

Or run the following command to use hosts ip for port mapping

```
$ sudo ./docker-cdh-datanode -a 192.168.200.23 -p 8020 -v /data/hdfs/dn
```

