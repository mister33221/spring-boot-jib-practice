# Step 1: Start with a base image. In this case, we are using OpenJDK 17
FROM openjdk:17-jdk-alpine

# Step 2: Set a working directory
WORKDIR /app

# Step 3: Copy the jar file into the image
COPY target/jib-practice-0.0.1-SNAPSHOT.jar /app

EXPOSE 8080

# Step 4: Set the command to start the Spring Boot application
ENTRYPOINT ["java", "-jar", "jib-practice-0.0.1-SNAPSHOT.jar"]

# Step 5: package the application to produce a jar file
# mvn clean package

# Step 6: Use docker command to build the image
# docker build -t jib-practice .

# Step 7-1: Use image to run the container
# docker run -d -p 8080:8080 jib-practice

# Step 7-2: Use docker-compose to run the container
# docker-compose up -d
