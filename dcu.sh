#!/bin/bash

# shortcut for 'docker-comopse build' followed by 'docker-compose up'
# any args passed to this shortcut will be appended verbatim to the 'docker-compose up' command

docker-compose build
docker-compose up $@
