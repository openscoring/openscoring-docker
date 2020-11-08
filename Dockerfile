FROM tomcat:8.5.51-jdk8-openjdk-slim

MAINTAINER Villu Ruusmann <villu.ruusmann@gmail.com>

ARG version=2.0.3

COPY . /openscoring

WORKDIR /openscoring

ENV CATALINA_OPTS="-Dconfig.file=application.conf"

ADD https://repo1.maven.org/maven2/org/openscoring/openscoring-webapp/${version}/openscoring-webapp-${version}.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]