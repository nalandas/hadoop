FROM hadoop-cdh5-base:0.0.1
MAINTAINER David Geng <david.geng@idevops.net>

# Install HDFS datanode
RUN yum clean all; yum install -y hadoop-yarn-nodemanager hadoop-hdfs-datanode hadoop-mapreduce

RUN alternatives --install /etc/hadoop/conf hadoop-conf /etc/hadoop/conf.empty 50
RUN alternatives --set hadoop-conf /etc/hadoop/conf.empty

# Configure hadoop
ADD files/core-site.xml.template /etc/hadoop/conf/core-site.xml.template
ADD files/hdfs-site.xml.template /etc/hadoop/conf/hdfs-site.xml.template

ENV HDFS_DATANODE_SERVER_PORT 50010
ENV HDFS_DATANODE_HTTP_PORT 50075
ENV HDFS_DATANODE_IPC_PORT 50020
ENV HDFS_DATANODE_HTTPS_PORT 50475
VOLUME /var/lib/hadoop-hdfs/cache/hdfs/dfs/data
