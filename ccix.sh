#!/usr/bin/env bash

### A shortcut for running the custom_commands initialize script 

CUSTOM_COMMANDS_DIR=$HOME/.custom_commands

cd $CUSTOM_COMMANDS_DIR
$CUSTOM_COMMANDS_DIR/create_custom_comands.sh -s ~/.myScripts
