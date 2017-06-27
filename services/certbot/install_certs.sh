#!/bin/bash

cd /kannji/

docker-compose -p certbot run --rm \
    -p 80:80 -p 443:443 \
    certbot certonly \
    --standalone \
    -d api.dontusethisinproduction.fail \
    -d dontusethisinproduction.fail \
    --non-interactive \
    --agree-tos \
    -m webdev@janlucaklees.de

openssl dhparam -out ./services/certbot/mounts/sertificates/dhparam.pem 4096