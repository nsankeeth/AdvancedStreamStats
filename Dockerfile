FROM php:7.3-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql

RUN apk add --no-cache libpng libpng-dev && docker-php-ext-install gd && apk del libpng-dev

WORKDIR /var/www