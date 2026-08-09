FROM eclipse-temurin:21-jdk
LABEL maintainer="prasanth9566607@gmail.com"

RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    && rm -rf /var/lib/apt/lists/* \
    && curl -fsSL https://services.gradle.org/distributions/gradle-8.5-bin.zip -o gradle.zip \
    && unzip gradle.zip -d /opt/gradle \
    && rm gradle.zip

ENV PATH=$PATH:/opt/gradle/gradle-8.5/bin

CMD ["gradle", "--version"]