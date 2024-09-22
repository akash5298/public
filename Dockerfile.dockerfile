# Use a base image with Java installed
FROM openjdk:17-jdk-alpine

# Add a volume for application data
VOLUME /tmp

# Copy the JAR file into the container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8080
EXPOSE 8080

# Run the application
ENTRYPOINT ["java","-jar","/app.jar"]
