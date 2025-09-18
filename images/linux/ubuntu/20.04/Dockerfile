FROM ubuntu:20.04
LABEL maintainer="prasanth9566607@gmail.com"
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y curl wget git vim && \
    rm -rf /var/lib/apt/lists/*
CMD ["/bin/bash"]