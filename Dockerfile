FROM tomcat:9.0.80-jdk8-corretto-al2
RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/examples
ADD EmailList.war /usr/local/tomcat/webapps/EmailList
ADD EmailList_Get.war /usr/local/tomcat/webapps/EmailList_Get
ADD mysurvey.war /usr/local/tomcat/webapps/mysurvey

EXPOSE 8000
CMD ["catalina.sh", "run"]