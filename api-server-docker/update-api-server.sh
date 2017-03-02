#!/bin/bash

# stop container and remove image
docker stop kannji-api-server
docker rm kannji-api-server
docker rmi kannji-api-server

# get passwords to where we need them
cp ../passwords.sh ./passwords.py

# build the new docker image
docker build -t kannji-api-server /home/kannji/api-server-docker

# finally start it
docker run -d --name kannji-api-server -p 80:80 kannji-api-server
