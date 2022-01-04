# how to copy docker image to the other machine and setup

## foreword

You need install newest version of docker software at target machine. If you need to run __docker__ with __sudo__, you should add the current user into "docker".

```
sudo usermod -aG docker $USER
```

Use ```id``` to check the status of the current user.


## steps to move

Here source machine is "kitty", and destination machine is "x220". At "kitty", use command to list all docker images:
```
$ docker images
```

and report as:
```
REPOSITORY              TAG                 IMAGE ID            CREATED             SIZE
ericosur/buildyocto     latest              bff30d83bdad        5 months ago        771MB
```

Here I will export docker image bff30d83bdad:
```
$ docker save -o yo.tar ericosur/buildyocto:latest
```

Note the permission and ownership is only for root.
```
$ sudo chown $USER.$USER yo.tar
$ sudo chmod 660 yo.tar
```

And then copy exported image file to destination machine. Load such image:
```
$ docker load --input yo.tar
$ docker images
```

Modify startup script for destination machine:
```
#!/bin/bash

VOL2=$HOME/bin:/home/jenkins/bin:rw
#VOL3=$HOME/src/snippet:/src/snippet:rw
#MYQT=$HOME/src/myqt:/src/myqt:rw

#YOSEDIR=$HOME/yose
#if [ "$HOSTNAME" == "x220" ] ; then
#    echo "run at x220"
#    VOLOPT=$YOSEDIR:/ssd/yose:rw
#fi

sudo docker run -ti \
    -v $VOLOPT -v $VOL2 -v $VOL3 \
    -v $MYQT \
    -u 1000:1000 \
    -w /ssd/yose \
    ericosur/buildyocto:latest
```

After running such image, keep container ID
```
$ docker ps -a
ba882ec006ef
```

another script to recycle such docker container
```
#!/bin/bash

ID=ba882ec006ef
docker start -i $ID
```

remove docker with container ID
```
$ dokcer rm $ID

```


And always use "yosedock" to enter docker environment to build packages.
