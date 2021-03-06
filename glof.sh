#!/usr/bin/env bash

# git log oneline command with filenames

set -e

git log --pretty=format:"%C(yellow)%h %C(green)%ad %C(red)%an%Creset %s %C(auto)%d" --graph --date=local --stat
