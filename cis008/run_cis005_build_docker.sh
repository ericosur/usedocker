#!/bin/bash

VOL2=$HOME/bin:/home/jenkins/bin:rw
VOL3=/src/snippet:/src/snippet:rw
MYQT=/src/myqt:/src/myqt:rw

if [ "$HOSTNAME" == "kitty" ] ; then
    echo "hello kitty"
    VOLCIS005=/ssd/cis005:/ssd/cis005:rw
fi

# gmacario/build-yocto
#
docker run -ti --rm \
    -v $VOLCIS005 \
    -v $VOL2 -v $VOL3 \
    -v $MYQT \
    -u 1000:1000 \
    -w /ssd/cis005 \
    ericosur/buildyocto
