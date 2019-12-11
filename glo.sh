#!/usr/bin/env bash

# shortcut for: 'git log --oneline' with added flags for pretty printint extra information

set -e

git log --pretty=format:"%C(yellow)%h %C(green)%ad %C(red)%an <%C(yellow)%ae%C(red)>%Creset %s %C(auto)%d" --graph --date=local
