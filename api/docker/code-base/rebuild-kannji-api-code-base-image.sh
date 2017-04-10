#!/bin/bash

# go to this dir
cd /kannji/api/docker/code-base/

# stop and remove eventually running containers and remove the old image to be able to reuse the name
sh ../remove-docker-image.sh $1

# get passwords to where we need them
cp /kannji/passwords.sh ./passwords.py

# build the new docker image, disabling cache so the code is always downloaded from the repo
docker build --no-cache -t $1 .

# remove password file
rm ./passwords.py