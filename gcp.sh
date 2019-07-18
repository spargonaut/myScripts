#!/usr/bin/env bash

# shortcut for git cherry-pick.  first argument si expected to be the commit hash

set -e

if [ $# -eq 0 ]; then
    printf "\nNo arguments supplied.\nfirst argument is expected to be the commit hash to cherry-pick\n\n"
    exit 1
fi

git cherry-pick $1
