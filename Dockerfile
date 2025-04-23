FROM amazonlinux:2 

RUN yum install httpd -y

EXPOSE 8080

USER jenkins
