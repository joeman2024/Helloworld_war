FROM amazonlinux:2 

RUN yum install httpd -y
mkt
CMD /user/bin/httpd -DFOREGROUND 

CMD /var/lib/jenkins/workspace/pipeline-docker/target/ SimpleTomcatWebApp.war  /var/www/html/

EXPOSE 8070
