#!/usr/bin/env bash

#TODO use correct dockerfile (-f i guess)
#TODO make sue to reference latest number not always 2
docker-compose run --rm --entrypoint ln certbot -s /etc/letsencrypt/archive/dontusethisinproduction.fail/cert2.pem /etc/letsencrypt/live/dontusethisinproduction.fail/cert.pem
docker-compose run --rm --entrypoint ln certbot -s /etc/letsencrypt/archive/dontusethisinproduction.fail/chain2.pem /etc/letsencrypt/live/dontusethisinproduction.fail/chain.pem
docker-compose run --rm --entrypoint ln certbot -s /etc/letsencrypt/archive/dontusethisinproduction.fail/fullchain2.pem /etc/letsencrypt/live/dontusethisinproduction.fail/fullchain.pem
docker-compose run --rm --entrypoint ln certbot -s /etc/letsencrypt/archive/dontusethisinproduction.fail/privkey2.pem /etc/letsencrypt/live/dontusethisinproduction.fail/privkey.pem
