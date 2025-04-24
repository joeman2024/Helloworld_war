FROM amazonlinux:2 

RUN yum install httpd -y

COPY  /var/lib/jenkins/workspace/pipeline-docker/target/SimpleTomcatWebApp.war /var/www/html 

CMD /user/bin/httpd -DFOREGROUND 

EXPOSE 8080
