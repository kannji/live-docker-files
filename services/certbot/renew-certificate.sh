#!/usr/bin/env bash

# change to the dir where the docker-compose file is located
cd /kannji/

# run a certbot container that renews the certificate and get's removed afterwards
docker-compose run --rm certbot renew