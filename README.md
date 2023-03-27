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

## docker

how to attach a running docker container and get into shell?
```
docker exec -it mariadb /bin/bash
```

## mysqldump

https://www.digitalocean.com/community/tutorials/how-to-import-and-export-databases-in-mysql-or-mariadb


## docker save/load

```
docker save -o zebra-build-v2.tar zebra:v2

docker save myimage:latest | gzip > myimage_latest.tar.gz

docker lodad < abc.tar.gz

```

