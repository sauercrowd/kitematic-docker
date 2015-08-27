#!/bin/bash
    docker run -d --net host --name kitematic \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY  \
    -v $HOME/.Xauthority:/root/.Xauthority \
    -v /var/run/docker.sock:/var/run/docker.sock \
    --privileged=true jonadev95/kitematic-docker
