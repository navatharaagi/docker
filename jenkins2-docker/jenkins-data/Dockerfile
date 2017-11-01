# Jenkins-data Dockerfile
FROM debian:jessie
MAINTAINER Navatharaagi

RUN useradd -d "/var/jenkins_home" -u 1000 -m -s /bin/bash jenkins
RUN mkdir -p /var/log/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
