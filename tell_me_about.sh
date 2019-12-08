#!/usr/bin/env bash

COMMAND_UNDER_INSPECTION=$1

function print_custom_command() {
  SYMLINK_LOCATION=$(which $COMMAND_UNDER_INSPECTION)
  EXECUTABLE_LOCATION=$(readlink $SYMLINK_LOCATION)
  COMMAND_CONTENTS=$(cat $EXECUTABLE_LOCATION)

  printf "\n"
  printf "The $COMMAND_UNDER_INSPECTION command is located at $SYMLINK_LOCATION\n"
  printf "\n"
  printf "The executable for the $COMMAND_UNDER_INSPECTION command is located at $EXECUTABLE_LOCATION\n"
  printf "\n"
  printf "It's contents are:\n"
  printf -- "------------------------------------------------------------------------------------------\n"
  printf "$COMMAND_CONTENTS\n"
  printf -- "------------------------------------------------------------------------------------------\n"
  printf "\n"
}


man "$COMMAND_UNDER_INSPECTION" 2> /dev/null

if [ $? -eq 1 ]; then
  command -v $COMMAND_UNDER_INSPECTION > /dev/null 2>&1
  if [ $? -eq 0 ]; then
    print_custom_command
  else
    printf "\nI can't find the command $COMMAND_UNDER_INSPECTION\n\n"
  fi
fi
  
