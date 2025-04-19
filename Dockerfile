FROM amazonlinux:2 

RUN yum install httpd -y

EXPOSE 8080

COPY /var/lib/jenkins/workspace/java-webapp/target/SimpleTomcatWebApp.war  var/www/html/

