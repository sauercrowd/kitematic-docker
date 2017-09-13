# Kitematic-docker

### What is this?

This Docker Image should give every Linux User the opportunity to use the Kitematic GUI.
(I've tried to install it on ubuntu and fedora, it both failed)

### How could I start it?

    docker run -d --net host --name kitematic \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY  \
    -v $HOME/.Xauthority:/root/.Xauthority \
    -v /var/run/docker.sock:/var/run/docker.sock \
    --privileged=true jonadev95/kitematic-docker

or just use firststart.sh

(It takes time to startup, ~30s)


### I've closed the kitematic window, but now I want it back again... 


If you want to restart kitematic, just execute ```docker restart kitematic ``` (Or use start.sh)

That's all!

### It's so dirty and ugly that you mount xorg and docker sockets and make it privileged

Yes you're right, but the reason I've made it was to make it easier for everyone to test kitematic on linux and provide an image which just works.

So please take a look at the dockerfile to see that the Image is not doing something evil with the sockets :-) 
