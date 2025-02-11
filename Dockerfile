FROM php:7.4-fpm-bullseye

LABEL maintainer="nimdasx@gmail.com" \
    description="fpm php-7.4 phalcon-4.1"

#config php
COPY php-nimdasx.ini /usr/local/etc/php/conf.d/php-nimdasx.ini

#timezone
RUN ln -sf /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

ADD --chmod=0755 https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN install-php-extensions ioncube_loader pdo_mysql pdo_pgsql gd zip mysqli xmlrpc redis sqlsrv pdo_sqlsrv psr phalcon-4.1.2