FROM openjdk:23-jdk-oraclelinux8
COPY target/demo-0.0.1-SNAPSHOT.jar java-app.jar
ENTRYPOINT [ "java", "-jar", "java-app.jar" ]