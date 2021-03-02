#!/usr/bin/env bash

### shortcut for: 'git remote add origin <new_origin_url>' where <new_origin_url> is the, uhh...  new origin url.
### args: 1 - the url for the new origin

if [ "$#" -ne 1 ]; then
    printf "\n\nIllegal number of arguments.  a URL is expected for the new origin\n\n"
    exit 1
fi

git remote add origin $1
