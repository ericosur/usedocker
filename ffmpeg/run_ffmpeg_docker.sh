#!/bin/bash

docker run --rm \
    -u 1000:1000 \
    -v $PWD:/work \
    -w /work \
    jrottenberg/ffmpeg -stats \
    $*
