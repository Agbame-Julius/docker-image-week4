# Stage 1: Build the JAR file
FROM maven:3.8.6-openjdk-21 AS build
WORKDIR /app
COPY src ./src
COPY pom.xml .
RUN mvn clean package

# Stage 2: Create the final image
FROM openjdk:21-ea-1-jdk-slim
LABEL authors="JuliusAgbame"
WORKDIR /app
COPY --from=build /app/target/DockerDemo-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/app.jar"]


