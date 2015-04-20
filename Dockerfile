FROM maven:3.3-jdk-8

MAINTAINER Villu Ruusmann <villu.ruusmann@gmail.com>

COPY . /openscoring

WORKDIR /openscoring

# Downloads the org.openscoring:openscoring-server JAR file and all its transitive dependency JAR files to "/openscoring/lib"
RUN ["mvn", "clean", "package"]

ENTRYPOINT ["java", "-Dconfig.file=application.conf", "-Djava.util.logging.config.file=logging.properties", "-cp", "lib/*", "org.openscoring.server.Main"]

EXPOSE 8080

CMD []