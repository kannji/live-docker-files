#!/bin/bash
docker stop kannji-api-server
docker rm kannji-api-server
docker rmi kannji-api-server
docker build -t kannji-api-server /home/kannji/api-server-docker
docker run -d --name kannji-api-server -p 8000:80 kannji-api-server
