#!/bin/bash

# change to the directory this script is in, to mke life easier
cd /kannji/live/nginx/

# set the name for the backup dir
bkpDirName="bkp_nginx_$(date '+%Y-%m-%d_%H:%M')"

# create folder for backing up old data
mkdir ${bkpDirName}

# TODO assuming that the container name is constant
# copy the current data from the server into the backup folder
docker cp kannji_nginx_1:/etc/letsencrypt/ ./${bkpDirName}/letsencrypt/
docker cp kannji_nginx_1:/etc/ssl/certs/dhparam.pem ./${bkpDirName}/dhparam.pem

# TODO assuming that the container name is constant
# copy the current data to the nginx dir (this dir) to be used when the nginx container is recreated. (see Dockerfile)
docker cp kannji_nginx_1:/etc/letsencrypt/ ./letsencrypt/
docker cp kannji_nginx_1:/etc/ssl/certs/dhparam.pem ./dhparam.pem
