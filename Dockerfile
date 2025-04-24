FROM amazonlinux:2 

RUN yum install httpd -y
COPY  var/www/html
CMD /var/lib/jenkins/workspace/pipeline-docker/target/SimpleTomcatWebApp.war  /user/bin/httpd -DFOREGROUND 

EXPOSE 8080
