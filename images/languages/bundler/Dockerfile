FROM ubuntu:22.04
LABEL maintainer="prasanth9566607@gmail.com"

RUN apt-get update && apt-get install -y \
    ruby \
    ruby-dev \
    && rm -rf /var/lib/apt/lists/* \
    && gem install bundler

CMD ["bundler", "--version"]