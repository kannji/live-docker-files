#!/bin/bash

# stop container in case it might be running
docker stop $1

# remove the container
docker rm $1

# now we can remove the image. We need to remove it first, so we can reuse the name for our updated image
docker rmi $1