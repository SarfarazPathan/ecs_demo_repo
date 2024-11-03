# Use the official OpenJDK image as a base
FROM openjdk:17-jdk-alpine

# Add a volume to the /tmp directory
VOLUME /tmp

# Expose port 8080 to the outside
EXPOSE 8080

# The application's JAR file
ARG JAR_FILE=target/*.jar

# Copy the application's JAR file to the container
COPY ${JAR_FILE} app.jar

# Run the JAR file
ENTRYPOINT ["java","-jar","/app.jar"]
