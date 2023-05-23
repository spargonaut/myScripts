#!/usr/bin/env bash

### this command is a shortcut for renameing a stash at a given index

if [ "$#" -ne 2 ]; then
    printf "\n\nIllegal number of arguments.  Two integers are expected, The first is the stash index to be renamed, the second is the new name for that stash.\n\n"
    exit 1
else
    echo "got two arguments"
    echo ${2}
fi

#git stash apply stash@{$1}
STASH_HASH=`git stash drop stash@{$1} | awk '{print $3}' | sed 's/(//' | sed 's/)//'`

printf "\n\nStash Hash: ${STASH_HASH}\n\n"

git stash store -m "${2}" ${STASH_HASH} 
