FROM tomcat:9.0-alpine
WORKDIR /opt/tomcat/webapps
ADD target/helloworld-1.1.jar /usr/local/tomcat/webapps/helloworld-1.1.jar
EXPOSE 9090
CMD ["catalina.sh","run"]
