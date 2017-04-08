#!/bin/bash

# stop container in case it might be running
docker stop kannji-api-base-stage2-image

# remove the container
docker rm kannji-api-base-stage2-image

# now we can remove the image. We need to remove it first, so we can reuse the name for our updated image
docker rmi kannji-api-base-stage2-image

# get passwords to where we need them
cp /home/kannji/passwords.sh ./passwords.py

# build the new docker image, disabling cache so the code is always downloaded from the repo
docker build --no-cache -t kannji-api-base-stage2-image /home/kannji/docker/api/base/stage2

# remove password file
rm ./passwords.py