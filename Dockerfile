FROM amazonlinux:2 

RUN yum install httpd -y

RUN cp /var/lib/jenkins/workspace/pipeline-docker/target/SimpleTomcatWebApp.war/  /var/www/html/

CMD /user/Sbin/httpd -DFOREGROUND 



EXPOSE 8070
