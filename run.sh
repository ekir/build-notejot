#!/bin/bash
#http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/
docker run --rm -it \
-e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
notejot-builder /bin/bash 
