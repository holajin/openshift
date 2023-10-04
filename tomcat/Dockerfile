FROM tomcat:9.0.80

RUN ln -snf /usr/share/zoneinfo/Asia/Seoul /etc/localtime
RUN rm -rf /usr/local/tomcat/webapps/ROOT/*

COPY context.xml /usr/local/tomcat/conf/context.xml 
COPY *.jsp /usr/local/tomcat/webapps/ROOT/
COPY *.png /usr/local/tomcat/webapps/ROOT/
COPY *.jpeg /usr/local/tomcat/webapps/ROOT/
COPY *.jpg /usr/local/tomcat/webapps/ROOT/
COPY mysql-connector-j-8.0.33.jar /usr/local/tomcat/lib/mysql-connector-j-8.0.33.jar

EXPOSE 8080

CMD ["catalina.sh", "run"]
