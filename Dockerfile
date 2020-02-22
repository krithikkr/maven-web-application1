FROM openjdk:8-alpine

# Required for starting application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/maven-web-application*.war /usr/local/tomcat/webapps/maven-web-application.war



