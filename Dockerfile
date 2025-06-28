FROM openjdk:17-alpine

EXPOSE 8000

WORKDIR /user/app

COPY *.jar app.jar

ENTRYPOINT [ "java", "-jar", "app.jar" ]