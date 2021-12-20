#!/bin/bash

docker-compose up -d
sleep 1
docker-compose run --rm magick

