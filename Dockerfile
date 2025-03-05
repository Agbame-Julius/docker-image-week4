FROM ubuntu:latest
LABEL authors="JuliusAgbame"
FROM openjdk:21-ea-1-jdk-slim
WORKDIR /app
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/app.jar"]


