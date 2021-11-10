#!/bin/bash

# will use $PWD
# will terminate container after exiting

MYUID=$(id -u)
MYGID=$(id -g)
DOCKER_IMAGE=busybox
WORKSPACE=/work

#    -u ${MYUID}:${MYUID}  \

docker run -ti --rm \
    -v $PWD:${WORKSPACE} \
    -w ${WORKSPACE} \
    ${DOCKER_IMAGE}
