#!/usr/bin/env bash

### This is a _very_ buggy implementation of watch
### The first argument must be an integer (this is not enforced)
### The second argument is the command to be watched.  If it has flags, or arguments, you'll need to wrap the whole thing in double quotes.


while :; 
  do 
  clear
  date
  printf "\n"
  $2
  sleep $1
done
