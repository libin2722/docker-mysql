#
# MAINTAINER        Terry.Li<libin2722@sohu.com>
# DOCKER-VERSION    1.12.1
#
# Dockerizing MySql: Dockerfile for building MySql images
#
FROM       centos:latest
MAINTAINER Terry.Li,<libin2722@sohu.com>

ENV MYSQL_DIR /var/lib/mysql

RUN yum install -y wget

RUN cd /etc/yum.repos.d

RUN wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm && \
	rpm -ivh mysql-community-release-el7-5.noarch.rpm && \
	yum install -y mysql-server mysql-devel


EXPOSE 3306

