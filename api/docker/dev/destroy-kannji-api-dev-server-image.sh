#!/bin/bash

# stop container and remove image
docker stop kannji-api-server-dev

# remove the container
docker rm kannji-api-server-dev

# now we can remove the image. We need to remove it first, so we can reuse the name for our updated image
docker rmi kannji-api-server-dev