# Jenkins-data Dockerfile
FROM debian:jessie
MAINTAINER Navatha Raagi

#create Jenkins user
RUN useradd -d "/var/jenkins_home" -u 1000 -m -s /bin/bash jenkins
#recreate the Jenkins log directory
RUN mkdir -p /var/log/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins

#add the Docker volume by making log folder a "mount"
#VOLUME ["/var/log/jenkins"]
VOLUME ["/var/log/jenkins", "/tmp/jenkins_home"]

#set the user of this container to "Jenkins"  for consistency
USER jenkins

#these images don’t actually “run” anything, just prints a message as output when they start as a reminder
#CMD ["echo", "Data Container for jenkins"] && wait
CMD ["echo", "Data container "]
