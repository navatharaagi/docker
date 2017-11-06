# A Jenkins-master docker file
FROM jenkinsci/jenkins:lts
MAINTAINER Navatha Raagi

USER root
RUN mkdir /var/log/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
USER jenkins

ENV JAVA_OPTS="-Xmx8192m"
ENV JENKINS_OPTS="--handlerCountStartup=100 --handlerCountMax=300  --logfile=/var/log/jenkins/jenkins.log"

CMD ["tail -f /dev/null"]
