#!/bin/bash

test -z "${TOKEN}" && echo "Error: TOKEN env value is empty." && exit 1
test -z "${USERNAME}" && echo "Error: USERNAME env value is empty." && exit 1


IMG='rdok/php-docker:8.0-cli-buster'

docker build --tag ${IMG} .

echo "${TOKEN}" | docker login -u "${USERNAME}" --password-stdin

docker image push ${IMG}

docker logout
