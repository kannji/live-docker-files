#!/bin/bash

# stop container in case it might be running
docker stop kannji-api-base-stage1-image

# remove the container
docker rm kannji-api-base-stage1-image

# now we can remove the image. We need to remove it first, so we can reuse the name for our updated image
docker rmi kannji-api-base-stage1-image

# build the new docker image
docker build --no-cache -t kannji-api-base-stage1-image /home/kannji/docker/api/base/stage1