#!/usr/bin/env bash

# stop and remove all docker containers

printf "stopping all containers\n"
docker stop $(docker ps -aq)
printf "removing all containers\n"
docker rm $(docker ps -aq)
