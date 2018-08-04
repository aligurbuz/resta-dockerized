FROM php:fpm

RUN docker-php-ext-install pdo_mysql

RUN apt-get update \
    && apt-get install -y sudo \
    && apt-get install -y \
        curl \
        sed \
        zlib1g-dev \
    && docker-php-ext-install \
        zip \
        mysqli \ 

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \

