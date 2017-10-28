# A basic docker file to install tomcat and openjdk8
FROM centos:7
MAINTAINER Navatha Raagi


USER root

RUN mkdir /app
ENV JAVA_APP_DIR /app

RUN yum install -y \
       java-1.8.0-openjdk \
       java-1.8.0-openjdk-devel

ENV JAVA_HOME /etc/alternatives/jre


EXPOSE 8080

ENV TOMCAT_VERSION 8.5.23


# Get and unpack tomcat
RUN curl http://download.nextag.com/apache/tomcat/tomcat-8/v8.5.23/bin/apache-tomcat-8.5.23.tar.gz -o /opt/apache-tomcat-8.5.23.tar.gz \
 && /bin/tar xf /opt/apache-tomcat-8.5.23.tar.gz -C /opt/ \
 && ln -s /opt/apache-tomcat-8.5.23 /usr/share/tomcat

#Installing Jenkins war
#RUN wget=http://mirrors.jenkins.io/war-stable/latest/jenkins.war
#COPY jenkin.war /opt/apache-tomcat-8.5.23/webapps/jenkins.war

# Add roles
ADD tomcat-users.xml /opt/apache-tomcat-8.5.23/conf/

# Startup script
COPY tomcatinitscript.sh /etc/init.d/tomcat

RUN chmod 755 /etc/init.d/tomcat \
 && rm -rf /usr/share/tomcat/webapps/examples /usr/share/tomcat/webapps/docs

VOLUME ["/usr/share/tomcat/logs", "/usr/share/tomcat/work", "/usr/share/tomcat/temp", "/tmp/hsperfdata_root" ]

ENV CATALINA_HOME /usr/share/tomcat
ENV PATH $PATH:$CATALINA_HOME/bin

CMD /etc/init.d/tomcat start 
