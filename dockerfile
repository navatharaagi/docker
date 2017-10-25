# A basic docker file to install tomcat
FROM centos:7
MAINTAINER Navatha Raagi

EXPOSE 8080

ENV TOMCAT_VERSION 8.0.26
ENV DEPLOY_DIR /maven

# Get and unpack tomcat


RUN mkdir /app
ENV JAVA_APP_DIR /app

RUN yum install -y \ java-1.8.0-openjdk \ java-1.8.0-openjdk-devel

ENV JAVA_HOME /etc/alternatives/jre
