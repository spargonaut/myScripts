#!/usr/bin/env bash

printf "\nYou are about to remove the origin for this repository\n"

read -r -p "Are you sure? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    printf "\nRemoving the following origin information:\n"
    git remote show origin
    git remote remove origin
    printf "\ndone.\n"
else
    printf "\nok.  leaving the origin as is.\nexiting\n\n"
fi


