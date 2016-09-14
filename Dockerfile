#
# MAINTAINER        Terry.Li<libin2722@sohu.com>
# DOCKER-VERSION    1.12.1
#
# Dockerizing MySql: Dockerfile for building MySql images
#
FROM       daocloud.io/libin2722/centos:latest
MAINTAINER Terry.Li,<libin2722@sohu.com>

ENV MYSQL_DIR /var/lib/mysql

ADD mysql57-community-release-el7-9.noarch.rpm . 

RUN yum localinstall -y mysql57-community-release-el7-9.noarch.rpm && \
    yum install -y mysql-community-server epel-release expect && \
    yum update -y && \
    yum clean all && \
    rm -rf /var/cache/*



EXPOSE 3306

