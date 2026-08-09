# Ubuntu 24.04 LTS base image
FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
        bash \
        ca-certificates \
        curl \
        tar \
        gzip \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
