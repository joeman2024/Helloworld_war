FROM amazonlinux:2 

RUN yum install httpd -y

COPY 

CMD /user/bin/httpd -DFOREGROUND 

EXPOSE 80
