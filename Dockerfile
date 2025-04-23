FROM amazonlinux:2 

RUN yum install httpd -y
RUN systemctl start httpd
RUN systemctl enable httpd

EXPOSE 8080
