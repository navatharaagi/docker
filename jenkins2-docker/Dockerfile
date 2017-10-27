# A basic docker file to install Jenkins War file
FROM jenkinsci/jenkins:2.0-beta-1
MAINTAINER Navatha Raagi

USER root
#url= dest=/opt/apache-tomcat-8.5.23/webapps/jenkins.war


# Create the jenkins user
#RUN useradd -d "/var/jenkins_home" -u 1000 -m -s /bin/bash jenkins
#VOLUME ["/var/jenkins_home"]

USER jenkins

#where jenkins.war get downloaded from
ARG JENKINS_URL=http://mirrors.jenkins.io/war-stable/latest/jenkins.war
RUN wget ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war

EXPOSE 8080
#EXPOSE 50000
