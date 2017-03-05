#!/bin/bash
. /home/kannji/passwords.sh
docker run --name kannji-api-db -e MYSQL_ROOT_PASSWORD=$MARIA_DB_PW -e MYSQL_DATABASE=kannji -p 3306:3306 -d mariadb
