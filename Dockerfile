# FROM openjdk:8
# EXPOSE 8082
# ADD target/petclinic.war petclinic.war
# ENTRYPOINT ["java","-jar","/petclinic.war"]

# Use a more recent version of OpenJDK (matching the pipeline configuration for JDK 17)
FROM openjdk:17

# Expose the port your application will run on (adjust if necessary)
EXPOSE 8082

# Copy the JAR file from the target directory of the build to the container
# Adjust the path to match the location of the JAR file in your Jenkins workspace
ADD target/my-project-1.0.0.jar /my-project.jar

# Set the entry point to run the JAR file with Java
ENTRYPOINT ["java", "-jar", "/my-project.jar"]
