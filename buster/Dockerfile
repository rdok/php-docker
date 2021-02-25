FROM php:8.0-cli-buster

RUN apt-get update && apt-get install -y \
        git \
        zip unzip \
    && \
    rm -rf /tmp/* && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

COPY install-composer.sh .
RUN ./install-composer.sh
