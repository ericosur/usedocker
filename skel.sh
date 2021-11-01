#!/bin/bash

# will use $PWD
# will terminate container after exiting

MYUID=$(id -u)
MYGID=$(id -g)
DOCKER_IMAGE=busybox
WORKSPACE=/work

docker run -ti --rm \
    -u ${MYUID}:${MYUID}  \
    -v $PWD:${WORKSPACE} \
    -w ${WORKSPACE} \
    ${DOCKER_IMAGE}
