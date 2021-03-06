export BUSTER_IMG = dev/php-docker:8.0-cli-buster
export PWD = $(shell pwd)
export UID = $(shell id -u)
export GID = $(shell id -g)

test: build
	docker run --rm $${BUSTER_IMG} composer --version php
	docker run --rm $${BUSTER_IMG} composer require phpunit/phpunit

test-user: build
	docker run --user $${UID}:$${GID} --rm  --volume $${PWD}:/app \
		--workdir /app $${BUSTER_IMG} \
	composer require phpunit/phpunit

shell:
	docker run -it --user $${UID}:$${GID} --rm  --volume $${PWD}:/app \
		--workdir /app $${BUSTER_IMG} bash

.PHONY: build
build:
	docker build --tag $${BUSTER_IMG} php8-buster

test-php7-alpine:
	docker build --tag dev/php7-alpine php7-alpine
	docker run --rm dev/php7-alpine composer --version php
	docker run --rm dev/php7-alpine composer require phpunit/phpunit

test-php5-alpine:
	docker build --tag dev/php5-alpine php5-alpine
	docker run --rm dev/php5-alpine composer --version php
	docker run --rm dev/php5-alpine composer require phpunit/phpunit

test-php5-cli:
	docker build --tag dev/php5-cli php5-cli
	docker run --rm dev/php5-alpine composer --version php
	docker run --rm dev/php5-alpine composer require phpunit/phpunit
