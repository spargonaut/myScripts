#!/usr/bin/env bash

# list only directories

printf "\n"

if [ ! -z ${1} ]; then
  cd ${1}
fi

ls -1 -d */

printf "\n"
