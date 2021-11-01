#!/bin/bash

# will use $PWD
# will terminate container after exiting

MYUID=$(id -u)
MYGID=$(id -g)
DOCKER_IMAGE=alpine

docker run -ti  \
    ${DOCKER_IMAGE} \
    ash -l

PSID=$(docker ps -a | \grep ${DOCKER_IMAGE} | cut -d ' ' -f 1)

echo "NOTE: container process still exists... ${PSID}"
echo
echo "TIPS:"
echo "keep status to container image..."
echo "docker commit ${PSID} ${DOCKER_IMAGE}"
echo "remove this container process..."
echo "docker rm ${PSID}"
echo "resume this continer process..."
echo "docker start -i ${PSID}"
