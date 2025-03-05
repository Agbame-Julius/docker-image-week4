FROM openjdk:21-ea-1-jdk-slim
LABEL authors="JuliusAgbame"
WORKDIR /app
COPY target/docker-spring-boot.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/app.jar"]


