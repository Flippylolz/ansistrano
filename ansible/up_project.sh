#!/usr/bin/env bash

docker-compose -f docker-compose.poduction.yml build
docker-compose -f docker-compose.poduction.yml run --rm rails rake db:create
docker-compose -f docker-compose.poduction.yml run --rm rails rake db:migrate
docker-compose -f docker-compose.poduction.yml stop
docker-compose -f docker-compose.poduction.yml up -d
sleep 5
docker ps

