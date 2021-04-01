#!/usr/bin/env bash

### shortcut to checkout a whole stash or a single file from a stash
### args: 1 - the index of the stash; 2 - the path and filename from the stash to be checked out (optional) 
if [ "$#" -ne 1 ]; then
    printf "\n\nIllegal number of arguments.  One integer is expected, representing the index of stash to show.\n"
    printf "an optional path and filename to checkout a single file\n\n"
    exit 1
fi

git checkout "stash@{$1}" -- $2
