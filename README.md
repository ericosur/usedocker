README
======

This directory is meant to be a workspace, or starting point for docker running. [skel.sh](./skel.sh) is a basic script to start a docker image. You may customize to your own usage by editing it.

__docker-compose__ is a convenient tool to up/down docker service. The __docker-compose.yml__ config will be more readable than docker parameters.


## docker-compose.yml

[docker-compose.yml](./docker-compose.yml) in this directory defines how to start two copies of container (ffmpeg, imagemagick).

how to:
```
docker-compose up
docker-compose run --rm ffmpeg
docker-compose run --rm magick
docker-compose down
```
