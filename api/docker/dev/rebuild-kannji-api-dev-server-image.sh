#!/bin/bash

# embed the passwords file to be able to use the passwords here
. /kannji/passwords.sh

# go to this dir
cd /kannji/api/docker/dev/

# stop and remove eventually running containers and remove the old image to be able to reuse the name
sh ./destroy-kannji-api-dev-server-image.sh

# rebuild the base-code-base image to update the code
sh ../code-base/rebuild-kannji-api-code-base-image.sh

# build the new docker image
docker build -t kannji-api-server-dev --build-arg API_DEV_PW=$API_DEV_PW .