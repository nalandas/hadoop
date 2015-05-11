FROM genggjh/hadoop-cdh5-base:0.1
MAINTAINER David Geng <genggjh@hotmail.com>

ENV http_proxy http://9.115.78.100:8085
ENV https_proxy http://9.115.78.100:8085

# Install YARN Resource management
RUN yum clean all; yum install -y hadoop-yarn-resourcemanager

RUN alternatives --install /etc/hadoop/conf hadoop-conf /etc/hadoop/conf.empty 50
RUN alternatives --set hadoop-conf /etc/hadoop/conf.empty

# Configure hadoop
ADD files/yarn-site.xml.template /etc/hadoop/conf/yarn-site.xml.template
ADD files/mapred-site.xml /etc/hadoop/conf/mapred-site.xml


EXPOSE 50020 50090 50070 50010 50075 8031 8032 8033 8040 8042 49707 22 8088 8030


