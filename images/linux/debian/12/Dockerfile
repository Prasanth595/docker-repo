FROM debian:12
LABEL maintainer="you@example.com"
RUN apt-get update && apt-get install -y curl wget git vim && \
    rm -rf /var/lib/apt/lists/*
CMD ["/bin/bash"]