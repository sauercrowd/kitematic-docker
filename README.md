# Kitematic-docker

This Docker Image should give every Linux User the opportunity to use the Kitematic GUI.
(I've tried to install it on ubuntu and fedora, it both failed)

To start it, take a look at the start.sh script.

### Run the image

First, take the MIT-MAGIC-TOKEN from the host to be able to access your local Xorg-Server:

    set -f; IFS=$'\n'
    MIT-MAGIC-COOKIES=($(xauth list))
    set +f; unset IFS

Now the magic cookes are saved in the MIT-MAGIC-COOKIES variable.

Next, start your container:

    docker run -i --net host --name kitematic \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY  \
    -e MIT-MAGIC-COOKIES=$MIT-MAGIC-COOKIES \
    -v /var/run/docker.sock:/var/run/docker.sock \
    --privileged=true -t jonadev95/kitematic-docker


So, we need our X11 socket, the display variable, the magic cookies, and our docker socket. (And make it privileged to be able to write to the sockets)

That's all!
