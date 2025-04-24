FROM amazonlinux:2 

RUN yum install httpd -y

COPY var/www/html  /var/lib/jenkins/workspace/pipeline-docker/target/SimpleTomcatWebApp.war

CMD /user/bin/httpd -DFOREGROUND 

EXPOSE 8080
