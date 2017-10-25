# A basic docker file to install tomcat
FROM centos:7
MAINTAINER Navatha Raagi

RUN mkdir /app
ENV JAVA_APP_DIR /app
RUN yum install -y \ java-1.8.0-openjdk \ java-1.8.0-openjdk-devel
