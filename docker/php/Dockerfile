FROM php:7.3-fpm-alpine
RUN docker-php-ext-install pdo pdo_mysql

ENV APP_DIR=/var/www/html

RUN mkdir -p "${APP_DIR}" /var/www/html \
  && chown -R www-data:www-data "${APP_DIR}" /var/www \

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer && \
    ln -s /usr/local/bin/composer /usr/bin/composer
