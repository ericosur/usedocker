# readme

I mount local conf/ for this container, and put redis.conf into it. I did not specify the docker-entrypoint.sh to read config file from conf/ nor the path to config file. Why it could load config there?

## container image

https://hub.docker.com/r/redislabs/rejson/?ref=login


## redis-cli

ping: ```redis-cli ping```
get config: ```> get config *```
