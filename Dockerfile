FROM php:8-apache
RUN apt-get update && apt-get install -y \
    zlib1g-dev \
    libzip-dev
RUN docker-php-ext-install mysqli pdo pdo_mysql zip
COPY php.ini /usr/local/etc/php/php.ini
