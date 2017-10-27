# A basic docker file to install Jenkins War file
FROM jenkinsci/jenkins:2.0-beta-1
MAINTAINER Navatha Raagi

USER root
USER Jenkins
#url= dest=/opt/apache-tomcat-8.5.23/webapps/jenkins.war
ARG JENKINS_URL=http://mirrors.jenkins.io/war-stable/latest/jenkins.war

EXPOSE 8080
#EXPOSE 50000

RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war
