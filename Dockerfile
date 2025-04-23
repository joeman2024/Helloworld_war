FROM amazonlinux:2 

RUN yum install httpd -y
RUN mkdir folder1

EXPOSE 8080
