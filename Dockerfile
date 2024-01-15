FROM maven:3.9.5-openjdk-17 AS build  
WORKDIR /usr/src/app  
COPY src ./src  
COPY pom.xml .  
RUN mvn clean package

FROM openjdk:17-jdk-alpine
COPY target/demo-0.0.1-SNAPSHOT.jar java-app.jar
ENTRYPOINT [ "java", "-jar", "java-app.jar" ]