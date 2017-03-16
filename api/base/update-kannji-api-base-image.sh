#!/bin/bash

# stop container and remove image
docker stop kannji-api-base-image
docker rm kannji-api-base-image
docker rmi kannji-api-base-image

# get passwords to where we need them
cp /home/kannji/passwords.sh ./passwords.py

# build the new docker image
docker build --no-cache -t kannji-api-base-image /home/kannji/docker/api/base

# remove password file
rm ./passwords.py