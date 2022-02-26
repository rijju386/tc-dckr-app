FROM tomcat

RUN ["wget","-O","dd-java-agent.jar","https://dtdg.co/latest-java-tracer"]

COPY sample.war /usr/local/tomcat/webapps/

COPY setenv.sh /usr/local/tomcat/bin/
 

EXPOSE 8080
