#!/usr/bin/env bash

# shortcut for 'docker-compose down`.
# any arguments supplied to this command will be appended to the command verbatim

printf "\nExecuting 'docker-comopse down $@'\n\n"
docker-compose down $@
