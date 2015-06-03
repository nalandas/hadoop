FROM hadoop-cdh5-base:0.0.1
MAINTAINER David Geng <david.geng@idevops.net>

# Install HDFS Namenode
RUN yum clean all; yum install -y hadoop-hdfs-namenode

RUN alternatives --install /etc/hadoop/conf hadoop-conf /etc/hadoop/conf.empty 50
RUN alternatives --set hadoop-conf /etc/hadoop/conf.empty

# Configure hadoop
ADD files/core-site.xml.template /etc/hadoop/conf/core-site.xml.template
ADD files/hdfs-site.xml /etc/hadoop/conf/hdfs-site.xml

# hdfs dir
VOLUME /var/lib/hadoop-hdfs/cache/hdfs/dfs/name

ENV HDFS_NAMENODE_RPC_PORT 8020
ENV HDFS_NAMENODE_HTTP_PORT 50070
ENV HDFS_NAMENODE_HTTPS_PORT 50470
