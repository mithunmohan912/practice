FROM tomcat:8.5

#Postgres driver to Tomcat/lib folder
COPY drivers $CATALINA_HOME/lib

# Copy all keyfile-*.properties to $CATALINA_HOME
# COPY keyfile*.properties $CATALINA_HOME

# Copy WAR to webapps director
COPY platform-web.war $CATALINA_HOME/webapps

#RUN ls $CATALINA_HOME/webapps

#RUN ls $CATALINA_HOME/*.properties

# Unzip WAR in webapps director
RUN unzip -oq $CATALINA_HOME/webapps/platform-web.war -d $CATALINA_HOME/webapps/platform-web

RUN rm $CATALINA_HOME/webapps/platform-web.war

