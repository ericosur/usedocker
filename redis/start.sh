#!/bin/bash
#

docker run -p 6379:6379 --name redis-server \
    -v $HOME/usedocker/redis/data:/data \
    -d redis:latest \
    --requirepass "foobar2000"
