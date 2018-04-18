#!/bin/sh

# Build a docker image
docker build -t dockerapp .

# Run the docker image with volume
docker run -p 3001:3001 -v /home/yash/dockerapp/:/usr/src/app -it --name running-docker-app-with-volume dockerapp