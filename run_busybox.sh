#!/bin/bash

# will use $PWD
# will terminate container after exiting

DOCKER_IMAGE=busybox

docker run -ti --rm \
    ${DOCKER_IMAGE}

