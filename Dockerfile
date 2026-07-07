# Get jdk -- openjdk was not working on silicon chip, so had to use this ecplise image.
FROM eclipse-temurin:23-jdk


#copy the jar into container
ADD target/rest-docker-demo.jar rest-docker-demo.jar

#Create the image
ENTRYPOINT ["java","-jar", "/rest-docker-demo.jar"]

#this is the one single line you need to run to build the image. (to understand this command, just AI it.)
#docker build -t star/rest-docker-demo:v3  .


#This is to expose the port, because the docker wil run the application, but we won't be able to see becuase, docker uses its own network. So to check we need to expose the docker network. ((to understand this command, just AI it.)
#docker run -p 8080:8080 star/rest-docker-demo:v3