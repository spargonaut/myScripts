#!/usr/bin/env bash

### git stash apply stash@{$1}
### this command is shorthand for applying a stash at a given index

if [ "$#" -ne 1 ]; then
    printf "\n\nIllegal number of arguments.  One integer is expected, representing the stash to be applied.\n\n"
    exit 1
fi

git stash apply stash@{$1}
