#!/usr/bin/env bash

IFS=$'\n'
LOCAL_BRANCHES=`git branch -v`

printf "\n"

for LOCAL_BRANCH_INFO in $LOCAL_BRANCHES; do

#  printf "local branch info: $LOCAL_BRANCH_INFO"
#  printf "\n"
  
  LOCAL_BRANCH=`echo $LOCAL_BRANCH_INFO | awk '{print $1}'`
  if [ "$LOCAL_BRANCH" = "*" ]; then
    LOCAL_BRANCH=`echo $LOCAL_BRANCH_INFO | awk '{print $2}'`
  fi
  printf "branch: $LOCAL_BRANCH"
  printf "\n"
  

  BRANCH_STATUS=`echo $LOCAL_BRANCH_INFO | awk '{print $3}'`
  printf "status: $BRANCH_STATUS"
  printf "\n"

  if [ "$BRANCH_STATUS" = "[gone]" ]; then
    read -p "The branch $LOCAL_BRANCH is gone from upstream, would you like to delete it? [y|N] " -n 1 -r < /dev/tty
    
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        printf "DELETING: $LOCAL_BRANCH"
        git branch -d $LOCAL_BRANCH
        printf "\n"
    fi
  fi

  printf "\n"
done
