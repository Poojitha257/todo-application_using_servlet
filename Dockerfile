# Use a base image with Java already installed
FROM openjdk:latest

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the executable JAR file from your host into this image
COPY target/todo-app.jar .

# Specify the command to run your application
CMD ["java", "-jar", "todo-app.jar"]
