#!/bin/bash

VOL2=$HOME/bin:/home/jenkins/bin:rw
VOL3=/src/snippet:/src/snippet:rw
MYQT=/src/myqt:/src/myqt:rw

if [ "$HOSTNAME" == "kitty" ] ; then
    echo "hello kitty"
#    VOLOPT=/ssd/yose:/ssd/yose:rw
    VOLCIS005=/ssd/cis005:/ssd/cis005:rw
    VOLCIS008=/ssd/cis008:/ssd/cis008:rw
fi


sudo docker run -ti \
    -v $VOLCIS008 \
    -v $VOLCIS005 \
    -v $VOL2 -v $VOL3 \
    -v $MYQT \
    -u 1000:1000 \
    -w /ssd/cis008 \
    gmacario/build-yocto
