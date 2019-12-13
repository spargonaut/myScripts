#!/usr/bin/env bash

### ~/.custom_commands/initialize.sh -s ~/.myScripts -d
### a shortcut for running the custom_commands initialize script in dry-run mode

CUSTOM_COMMANDS_DIR=$HOME/.custom_commands

cd $CUSTOM_COMMANDS_DIR
$CUSTOM_COMMANDS_DIR/create_custom_commands.sh -s ~/.myScripts -d
