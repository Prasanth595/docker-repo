FROM ubuntu:22.04
LABEL maintainer="prasanth9566607@gmail.com"

RUN apt-get update && apt-get install -y \
    curl \
    && curl -sSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin --channel 8.0 \
    && rm -rf /var/lib/apt/lists/*

ENV PATH=$PATH:/root/.dotnet

CMD ["dotnet", "--version"]