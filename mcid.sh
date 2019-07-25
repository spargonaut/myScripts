#!/usr/bin/env bash

# shortcut for './mvnw clean install -Pdocker'
# extra maven flags are optional and will be passed straight through

set -e

./mvnw clean install -Pdocker
