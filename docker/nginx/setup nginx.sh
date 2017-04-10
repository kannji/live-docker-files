#!/usr/bin/env bash

docker run -it -p 80:80 -p 443:443 ubuntu

# in container
apt-get update
apt-get install -y nginx
apt-get install -y letsencrypt