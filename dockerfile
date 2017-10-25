# A basic docker file to install tomcat
FROM centos:7
MAINTAINER Navatha Raagi

EXPOSE 8080

ENV TOMCAT_VERSION 8.0.26
ENV DEPLOY_DIR /maven

# Get and unpack tomcat
RUN curl http://download.nextag.com/apache/tomcat/tomcat-8/v8.5.23/bin/apache-tomcat-8.5.23.tar.gz -o /opt/apache-tomcat-8.5.23.tar.gz \
 && /bin/tar xvf /opt/apache-tomcat-8.5.23.tar.gz -C /opt/ \
 && ln -s /opt/apache-tomcat-8.5.23 /opt/tomcat 

# Add roles
ADD tomcat-users.xml /opt/apache-tomcat-8.5.23/conf/

# Startup script
ADD deploy-and-run.sh /opt/apache-tomcat-8.5.23/bin/

RUN chmod 755 /opt/apache-tomcat-8.5.23/bin/deploy-and-run.sh \
 && rm -rf /opt/tomcat/webapps/examples /opt/tomcat/webapps/docs

VOLUME ["/opt/tomcat/logs", "/opt/tomcat/work", "/opt/tomcat/temp", "/tmp/hsperfdata_root" ]

ENV CATALINA_HOME /opt/tomcat
ENV PATH $PATH:$CATALINA_HOME/bin

CMD /opt/tomcat/bin/deploy-and-run.sh
