FROM php:7.4-apache

RUN apt-get update \
    && apt-get install -y default-mysql-client \
    && docker-php-ext-install mysqli \
    && docker-php-ext-enable mysqli

WORKDIR /var/www/html

ENV MYSQL_ROOT_PASSWORD=Senha123 \
    MYSQL_DATABASE=meubanco

COPY *.php .
COPY frontend/* .

EXPOSE 80
