# Use the official Tomcat 8 image
FROM tomcat:10.0-jdk17-temurin-focal

WORKDIR /usr/local/tomcat/webapps

RUN rm -rf ROOT

COPY target/untitled2.war /usr/local/tomcat/webapps/untitled2.war

EXPOSE 8080

CMD ["catalina.sh", "run"]