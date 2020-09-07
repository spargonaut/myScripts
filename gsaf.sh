#!/usr/bin/env bash

### short for: "git stash apply file"
### this command is shorthand for applying a specific file from a stash at a given index
### requires two arguments, the first, an integer to identify the stash to pull from.  the second is the file to restore

if [ "$#" -ne 2 ]; then
    printf "\n\nIllegal number of arguments. Two arguments expected\nThe first, an integer to represent the stash,\nThe second is the file to be restored.\n\n"
    exit 1
fi

git restore -s stash@{$1} -- $2
