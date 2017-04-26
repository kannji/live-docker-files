#!/bin/bash

# change to the directory this script is in, to mke life easier
cd /kannji/live/api-db/

# set the name for the backup dir
bkpDirName="bkp_api-db_$(date '+%Y-%m-%d_%H:%M')"

# create folder for backing up old data
mkdir ${bkpDirName}

# TODO assuming that the container name is constant
# copy the current data from the database into the backup folder
docker cp kannji_api-db_1:/var/lib/postgresql/data/ ./${bkpDirName}/data/

# TODO assuming that the container name is constant
# copy the current data to the api-db dir (this dir) to be used when the api-db container is recreated. (see Dockerfile)
docker cp kannji_api-db_1:/var/lib/postgresql/data/ ./data/
