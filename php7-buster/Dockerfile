FROM php:7.4-cli-buster

RUN apt-get update && apt-get install -y \
        git \
        zip unzip \
    && \
    rm -rf /tmp/* && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

ENV COMPOSER_HOME=/.composer-home
WORKDIR /.composer-home
RUN chmod 777 /.composer-home

COPY install-composer.sh .
RUN ./install-composer.sh
