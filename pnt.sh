#!/usr/bin/env bash

# delete package-lock.json, node-modules/, run 'npm install' and 'npm run test'

set -e

printf "\n"
printf "Deleting ./package-lock.json\n"
rm ./package-lock.json | true

printf "Deleting ./node_modules\n"
rm -rf ./node_modules | true

printf "Running 'npm install'"
npm install

printf "Running 'npm run test'"
npm run test
