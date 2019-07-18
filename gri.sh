#!/usr/bin/env bash

# interactive git rebase.  first argument is expected to be the number of commits back

set -e

if [ $# -eq 0 ]; then
    printf "\nNo arguments supplied.\nfirst argument is expected to be number of commits back to rebase\n\n"
    exit 1
fi

git rebase --interactive HEAD~$1
