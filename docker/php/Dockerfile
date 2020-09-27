FROM php:7.3-fpm-alpine
RUN docker-php-ext-install pdo pdo_mysql

ENV APP_DIR=/var/www/html

RUN mkdir -p "${APP_DIR}" /var/www/html \
  && chown -R www-data:www-data "${APP_DIR}" /var/www \
