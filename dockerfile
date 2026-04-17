FROM eclipse-temurin:8-jdk-jammy
COPY target/demo-1.0.jar app.jar
CMD ["java", "-cp", "app.jar", "Main"]