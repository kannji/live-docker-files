#!/bin/bash
. /home/kannji/passwords.sh

# stop container and remove image
docker stop kannji-api-server-dev
docker rm kannji-api-server-dev
docker rmi kannji-api-server-dev

# build the new docker image
docker build -t kannji-api-server-dev --build-arg API_DEV_PW=$API_DEV_PW /home/kannji/docker/api/dev

# finally start it
docker run -d --name kannji-api-server-dev -p 8000:8000 -p 2222:22 --cpus=".5" kannji-api-server-dev

# and restart ssh other wise it's not working
docker exec kannji-api-server-dev service ssh restart
