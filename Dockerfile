FROM php:7.3-fpm-alpine


RUN apt-get update \
     && apt-get install -y\
     && docker-php-ext-install pdo pdo_mysql