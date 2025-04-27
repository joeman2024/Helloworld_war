FROM amazonlinux:2 

RUN yum install httpd -y

CMD /user/bin/httpd -DFOREGROUND 

EXPOSE 80
