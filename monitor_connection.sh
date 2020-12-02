#!/usr/bin/env bash

while true
do
  START_DATE=`date`
  printf "\nStarting at $START_DATE\n"
  fast --upload --single-line
  DONE_DATE=`date`
  printf "Finished at $DONE_DATE\n"
  sleep 300
done
