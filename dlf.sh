#!/usr/bin/env bash

### shortcut for: docker logs -f <container_id>
set -e

if [ $# -eq 0 ]; then
    printf "\nNo arguments supplied.\nfirst argument is expected to be a container id\n\n"
    exit 1
fi

docker logs -f $1
