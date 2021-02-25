export DEV_BUSTER_IMG = dev/php-docker:8.0-cli-buster
export PROD_BUSTER_IMG = rdok/php-docker:8.0-cli-buster
export PWD = $(shell pwd)

test:
	docker build --tag $${DEV_BUSTER_IMG} .
	docker run --rm $${DEV_BUSTER_IMG} composer --version
	docker run --rm $${DEV_BUSTER_IMG} composer require phpunit/phpunit

include .env
export
build-deploy:
	./build-deploy.sh
