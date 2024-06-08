FROM tomcat:8.0.20-jre8

# Remove the existing ROOT webapp
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy the Java web application WAR file into the webapps directory of Tomcat
COPY target/*.jar /usr/local/tomcat/webapps/ROOT.jar

# Expose port 8080 (the default Tomcat port)
EXPOSE 8080

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
