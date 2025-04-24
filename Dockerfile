FROM amazonlinux:2 

RUN yum install httpd -y
COPY  var/www/html
CMD /user/bin/httpd -DFOREGROUND 

EXPOSE 8080
