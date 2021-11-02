#!/bin/bash
#
# redis + rejson
# https://hub.docker.com/r/redislabs/rejson/?ref=login
#
# just simple test, please use 'docker-compose up -d' to start
# the redis server
#

docker run \
    -p 6379:6379 \
    --name redis-redisjson \
    redislabs/rejson:latest
