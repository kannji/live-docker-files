#!/bin/bash

docker-compose -p $1 -e PROJECT_NAME=$1 -e DEBUG=1 up