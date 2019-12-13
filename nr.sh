#!/usr/bin/env bash

# shortcur for `npm run`
# expects at least one command
# passes all argumants, verbatim along to `npm run`

set -e

if [ $# -eq 0 ]; then
    printf "\nNo arguments supplied.\nfirst argument is expected to be the npm command to run\n\n"
    exit 1
fi

printf "\nExecuting 'npm run $@'\n"
npm run $@
