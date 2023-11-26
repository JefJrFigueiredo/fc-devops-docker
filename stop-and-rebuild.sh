#!/usr/bin/env sh

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q) --force
docker image rm $(docker image ls -q) --force
docker compose up -d
docker exec -it laravel sh