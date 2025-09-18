FROM openjdk:21-slim
LABEL maintainer="you@example.com"
RUN apt-get update && apt-get install -y maven && rm -rf /var/lib/apt/lists/*
CMD ["java", "-version"]