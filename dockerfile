FROM openjdk:8

COPY target/demo-1.0.jar app.jar

CMD ["java", "-cp", "app.jar", "Main"]