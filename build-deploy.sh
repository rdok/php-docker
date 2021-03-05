#!/bin/bash

test -z "${1}" && echo "Error: First argument should have docker tag." && exit 1
test -z "${2}" && echo "Error: Second argument should have docker path." && exit 1
test -z "${TOKEN}" && echo "Error: TOKEN env value is empty." && exit 1
test -z "${USERNAME}" && echo "Error: USERNAME env value is empty." && exit 1

IMG=${1}
PATH=${2}

docker build --tag ${IMG} ${PATH}

echo "${TOKEN}" | docker login -u "${USERNAME}" --password-stdin
docker image push ${IMG}

docker logout
