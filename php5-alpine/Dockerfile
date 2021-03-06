FROM php:5.5-fpm-alpine

RUN apk add --update-cache \
    zip unzip \
  && rm -rf /var/cache/apk/*

ENV COMPOSER_HOME=/.composer-home
WORKDIR /.composer-home
RUN chmod 777 /.composer-home

COPY install-composer.sh .
RUN ./install-composer.sh
