FROM php:7.4-apache

RUN apt-get update \
    && apt-get install -y default-mysql-client \
    && docker-php-ext-install mysqli \
    && docker-php-ext-enable mysqli

WORKDIR /var/www/html

COPY *.php /var/www/html/

EXPOSE 80
