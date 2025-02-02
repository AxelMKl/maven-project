FROM tomcat:9.0.85

ADD ./webapp/target/*.war /usr/local/tomcat/webapps/

RUN ln -s /usr/local/tomcat/webapps.dist/manager webapps/manager
RUN ln -s /usr/local/tomcat/webapps.dist/host-manager webapps/host-manager
RUN ln -s /usr/local/tomcat/webapps.dist/ROOT webapps/ROOT

EXPOSE 8080

CMD ["catalina.sh", "run"]