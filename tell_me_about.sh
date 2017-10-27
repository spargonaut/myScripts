#!/usr/bin/env bash

COMMAND_UNDER_INSPECTION=$1

SYMLINK_LOCATION=$(which $COMMAND_UNDER_INSPECTION)
EXECUTABLE_LOCATION=$(readlink $SYMLINK_LOCATION)
COMMAND_CONTENTS=$(cat $EXECUTABLE_LOCATION)

printf "\n"
printf "The $COMMAND_UNDER_INSPECTION command is located at $SYMLINK_LOCATION"
printf "\n"
printf "\n"
printf "The executable for the $COMMAND_UNDER_INSPECTION command is located at $EXECUTABLE_LOCATION"
printf "\n"
printf "\n"
printf "It's contents are:"
printf -- "\n------------------------------------------------------------------------------------------\n"
printf "$COMMAND_CONTENTS"
printf -- "\n------------------------------------------------------------------------------------------\n"
printf "\n"
