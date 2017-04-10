#!/bin/bash

# go to this dir
cd /kannji/api/docker/dev/

# rebuild the live-server image to get the new code in
sh ./rebuild-kannji-api-dev-server-image.sh

# start the fresh image
docker run -d --name kannji-api-server-dev -p 8000:8000 -p 2222:22 --cpus=".5" kannji-api-server-dev
