FROM adoptopenjdk/openjdk11:jre-11.0.9_11.1-alpine
ARG JAR_FILE=testService.jar
COPY target/${JAR_FILE} /myapp.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/myapp.jar"]