#!/usr/bin/env bash

### shortcut for: 'docker exec -it # /bin/sh' where # is the container ID to shell into
### args: 1 - the container ID of the running container to shell into

if [ "$#" -ne 1 ]; then
    printf "\n\nIllegal number of arguments.  The first argument should be the Container ID of the running container to shell into\n\n"
    exit 1
fi

docker exec -it $1 /bin/sh
