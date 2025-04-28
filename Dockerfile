FROM  amazonlinux 


RUN yum install httpd -y


CMD /user/Sbin/httpd  -DFOREGROUND 



EXPOSE 8070
