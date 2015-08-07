#!/bin/bash
set -f; IFS=$'\n'
MIT-MAGIC-COOKIES=($(xauth list))
set +f; unset IFS
 sudo docker run -i --net host --name kitematic -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY  -e MIT-MAGIC-COOKIES=$MIT-MAGIC-COOKIES -v /var/run/docker.sock:/var/run/docker.sock --privileged=true -t jonadev95/kitematic-docker

