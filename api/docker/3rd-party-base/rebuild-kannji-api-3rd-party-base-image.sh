#!/bin/bash

# go to this dir
cd /kannji/api/docker/3rd-party-base/

# stop and remove eventually running containers and remove the old image to be able to reuse the name
sh ../remove-docker-image.sh kannji-api-server-
# build the new docker image
docker build --no-cache -t kannji-api-3rd-party-base-image .