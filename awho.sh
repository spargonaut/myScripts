#!/usr/bin/env bash

# this script depends on the aws cli.  you can find more info here: https://aws.amazon.com/cli/
# it is used to determine if your credentials are configured and which one credentials you're currently using

aws sts get-caller-identity
