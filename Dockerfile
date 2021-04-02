FROM openjdk:8-jdk-alpine
FROM maven:3.5-jdk-8-alpine
COPY src /home/app/src
COPY pom.xml /home/app
EXPOSE 8080/tcp
RUN mvn -f /home/app/pom.xml clean package
COPY ./target/spring-boot-0.0.1-SNAPSHOT.jar /home/app/spring-boot-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/home/app/spring-boot-0.0.1-SNAPSHOT.jar"]

