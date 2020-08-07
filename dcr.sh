#!/usr/bin/env sh

### shortcut for "Docker-Compose Restart" to restart one or more containers from a docker-compose file
set -e

if [ $# -eq 0 ]; then
    printf "\nNo arguments supplied.\nfirst argument is expected to be the name of a container or service\n\n"
    exit 1
fi

docker-compose stop $@
docker-compose rm --force -v $@
docker-compose up --detach --force-recreate $@
