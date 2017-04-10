#!/bin/bash

# go to this dir
cd /kannji/api/docker/live/

# stop, delete and remove the live server
sh ./remove-docker-image.sh live_kannji-api-server

# stop, delete and remove the live servers code base image
sh ./remove-docker-image.sh live_kannji-api-code-base

# rebuild the live-code-base image to update the code
sh ../code-base/rebuild-kannji-api-code-base-image.sh live_kannji-api-code-base

# let docker compose handle the rest
docker-compose up -d