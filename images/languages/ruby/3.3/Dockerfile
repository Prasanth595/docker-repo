# Ruby 3.3 base image
FROM ruby:3.3-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
        git \
    && rm -rf /var/lib/apt/lists/*

CMD ["ruby", "--version"]
