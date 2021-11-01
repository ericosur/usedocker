#!/bin/bash

# will use $PWD
# will terminate container after exiting

MYUID=$(id -u)
MYGID=$(id -g)
DOCKIMG=jess/imagemagick
VOLS="-v $PWD:/images -v $HOME/Pictures:/Pictures \
-v $HOME/Downloads:/Downloads -v /bs2/Dropbox:/Dropbox"

if [ "$*" == "" ]; then

    echo "start ash..."
    docker run -ti --rm \
        -u ${MYUID}:${MYUID}  \
        ${VOLS} \
        -w /images \
        $DOCKIMG \
        ash -l
else

    echo $*
    docker run -ti --rm \
        -u ${MYUID}:${MYUID}  \
        ${VOLS} \
        -w /images \
        $DOCKIMG \
        $*

fi
