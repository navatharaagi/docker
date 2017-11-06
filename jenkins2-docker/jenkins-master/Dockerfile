# A Jenkins-master docker file
FROM jenkinsci/jenkins:lts
MAINTAINER Navatha Raagi

USER root
RUN mkdir /var/log/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
USER jenkins

ENV JAVA_OPTS=" -Xmx8192m"
ENV JENKINS_OPTS="--logfile=/var/log/jenkins/jenkins.log"
