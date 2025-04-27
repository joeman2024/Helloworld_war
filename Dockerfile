FROM amazonlinux:2 

RUN yum install httpd -y

CMD /user/Sbin/httpd -DFOREGROUND 

COPY /var/lib/jenkins/workspace/pipeline-docker/target/SimpleTomcatWebApp.war  /var/www/html/

EXPOSE 8070
