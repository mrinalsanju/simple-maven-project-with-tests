# Use an official OpenJDK image with Java 17 as the base image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the target directory to the container's working directory
COPY target/simple-maven-project-with-tests-1.0-SNAPSHOT.jar /app/

# Expose the application's default port (optional, adjust as needed)
EXPOSE 8080

# Set the command to run the JAR file
CMD ["java", "-jar", "simple-maven-project-with-tests-1.0-SNAPSHOT.jar"]
