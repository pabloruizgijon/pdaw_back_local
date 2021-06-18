FROM adoptopenjdk/openjdk11:latest
COPY target/spring-boot-backend-apirest-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]
