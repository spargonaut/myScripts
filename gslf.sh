#!/usr/bin/env bash

### shortcut for: 'git stash show stash@{#}' where # is the stash index to show
### args: 1 - the index of the stash

if [ "$#" -ne 1 ]; then
    printf "\n\nIllegal number of arguments.  One integer is expected, representing the index of stash to show.\n\n"
    exit 1
fi

git stash show stash@{$1}
