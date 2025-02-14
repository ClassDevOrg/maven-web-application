FROM tomcat:8.0.20-jre8
RUN sed -i '/<\/tomcat-users>/ i\<user username="admin" password="password" roles="admin-gui,manager-gui"/>' /usr/local/tomcat/conf/tomcat-users.xml
#COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY target/maven-web-application.war /usr/local/tomcat/webapps/maven-web-application.war
WORKDIR /usr/local/tomcat/
CMD sh catalina.sh start
MAINTAINER Jeevan
