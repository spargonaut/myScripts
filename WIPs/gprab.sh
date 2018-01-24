#!/usr/bin/env bash

# pull and rebase all branches that are found locally
# TODO - if there is a conflict, need to stop the script

set -e
exit 1
LOCAL_BRANCHES=`git branch`

for BRANCH in $LOCAL_BRANCHES; do
    printf "rebasing branch: $BRANCH\n"
    `git pull --rebase $BRANCH`
done
