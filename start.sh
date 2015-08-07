#!/bin/bash
set -f; IFS=$'\n'
mitcookies=($(xauth list))
set +f; unset IFS
sudo docker run -i --net host --name kitematic -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY  -e MAGICCOOKIES=$mitcookies -v /var/run/docker.sock:/var/run/docker.sock --privileged=true -t jonadev95/kitematic-docker
