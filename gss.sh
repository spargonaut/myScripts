#!/usr/bin/env bash

# shortcut for git stash save.  first argument is expected to be the stash message

set -e

if [ $# -eq 0 ]; then
    printf "\nNo arguments supplied.\nfirst argument is expected to be the stash message\n\n"
    exit 1
fi

git stash save $1
