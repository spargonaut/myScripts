#!/usr/bin/env bash

# list only directories

echo ${1}

if [ ! -z ${1} ]; then
  cd ${1}
fi

ls -1 -d */
