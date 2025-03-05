FROM openjdk:21-ea-1-jdk-slim
LABEL authors="JuliusAgbame"
WORKDIR /app
COPY target/DockerDemo-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/app.jar"]


