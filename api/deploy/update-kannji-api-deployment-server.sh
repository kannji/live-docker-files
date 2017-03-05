#!/bin/bash

# stop container and remove image
docker stop kannji-api-server
docker rm kannji-api-server
docker rmi kannji-api-server

# rebuild the base image
sh /home/kannji/docker/api/base/update-kannji-api-base-image.sh

# build the new docker image
docker build -t kannji-api-server /home/kannji/docker/api/deploy

# finally start it
docker run -d --name kannji-api-server -p 80:80 kannji-api-server
