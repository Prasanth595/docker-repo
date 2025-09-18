FROM ubuntu:22.04
LABEL maintainer="you@example.com"
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y curl wget git vim && \
    rm -rf /var/lib/apt/lists/*
CMD ["/bin/bash"]