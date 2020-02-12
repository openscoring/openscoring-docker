FROM tomcat:8.5.51-jdk8-openjdk-slim

MAINTAINER Villu Ruusmann <villu.ruusmann@gmail.com>

COPY . /openscoring

WORKDIR /openscoring

ENV CATALINA_OPTS="-Dconfig.file=application.conf -Djava.util.logging.config.file=logging.properties"

ADD https://repo1.maven.org/maven2/org/openscoring/openscoring-webapp/2.0.1/openscoring-webapp-2.0.1.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]