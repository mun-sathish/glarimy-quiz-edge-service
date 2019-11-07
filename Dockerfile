FROM maven:3.5-jdk-8 AS build
COPY src /usr/sdustakar/src
COPY pom.xml /usr/sdustakar
RUN mvn -f /usr/sdustakar/pom.xml clean package
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/sdustakar/target/quiz-edge-service-1.0.0.jar"]