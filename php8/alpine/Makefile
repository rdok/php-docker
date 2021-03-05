export DEV_ALPINE_IMG = dev/php-docker:8.0-cli-alpine
export PWD = $(shell pwd)
export UID = $(shell id -u)
export GID = $(shell id -g)

test: build
	docker run --rm $${DEV_ALPINE_IMG} composer --version
	docker run --rm $${DEV_ALPINE_IMG} composer require phpunit/phpunit

test-user: build
	docker run --user $${UID}:$${GID} --rm  --volume $${PWD}:/app \
		--workdir /app $${DEV_ALPINE_IMG} \
	composer require phpunit/phpunit

shell:
	docker run -it --user $${UID}:$${GID} --rm  --volume $${PWD}:/app \
		--workdir /app $${DEV_ALPINE_IMG} bash

.PHONY: build
build:
	docker build --tag $${DEV_ALPINE_IMG} .

#include .env
#export
build-deploy:
	bash ./build-deploy.sh


