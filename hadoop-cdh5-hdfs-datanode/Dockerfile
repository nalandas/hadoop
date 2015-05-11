FROM hadoop-cdh5-base:0.0.1
MAINTAINER David Geng <david.geng@idevops.net>

# Install HDFS datanode
RUN yum clean all; yum install -y hadoop-yarn-nodemanager hadoop-hdfs-datanode hadoop-mapreduce

RUN alternatives --install /etc/hadoop/conf hadoop-conf /etc/hadoop/conf.empty 50
RUN alternatives --set hadoop-conf /etc/hadoop/conf.empty

# Configure hadoop
ADD files/core-site.xml.template /etc/hadoop/conf/core-site.xml.template
ADD files/hdfs-site.xml /etc/hadoop/conf/hdfs-site.xml

EXPOSE 50020 50090 50070 50010 50075 8031 8032 8033 8040 8042 49707 22 8088 8030


