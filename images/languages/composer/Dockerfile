FROM ubuntu:22.04
LABEL maintainer="prasanth9566607@gmail.com"

RUN apt-get update && apt-get install -y \
    php \
    php-cli \
    php-mbstring \
    curl \
    unzip \
    && rm -rf /var/lib/apt/lists/* \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

CMD ["composer", "--version"]