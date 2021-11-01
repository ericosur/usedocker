#/bin/bash

# will use $PWD
# will terminate container after exiting

MYUID=$(id -u)
MYGID=$(id -g)
DOCKER_IMAGE=alpine
WORKSPACE=${HOME}

docker run -ti --rm \
    -u ${MYUID}:${MYUID}  \
    -v ${HOME}:${HOME} \
    -w ${WORKSPACE} \
    ${DOCKER_IMAGE} \
    ash -l

