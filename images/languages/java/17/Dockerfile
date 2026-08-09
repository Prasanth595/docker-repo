# Java 17 (Temurin) base image with Maven
FROM eclipse-temurin:17-jdk-jammy

RUN apt-get update && apt-get install -y --no-install-recommends \
        maven \
    && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/opt/java/openjdk

CMD ["java", "-version"]
