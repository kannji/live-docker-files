#!/bin/bash

# change to the directory this script is in, to mke life easier
cd /kannji

# set the name for the backup dir
bkpName="bkp_user-db_$(date '+%Y-%m-%d_%H:%M').tar.gz"

# TODO use pg_dumpall for backup to not create inconsistent backup

# copy the current data to the api-db dir (this dir) to be used when the api-db container is recreated. (see Dockerfile)
docker cp $(docker-compose ps -q user-db):/var/lib/postgresql/data/ ./services/user-db/data/data/

# store the backup as tar.gz file
tar -czf ./services/user-db/backups/${bkpName} ./services/user-db/data/data/
