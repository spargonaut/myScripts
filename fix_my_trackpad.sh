#!/usr/bin/env bash

### This script fixes the config for the Apple Magic Trackpad 2
DEVICE_ID=`xinput list | grep Magic | sed 's/.*id=\([0-9]*\).*/\1/'`
FINGER_ID=`xinput list-props $DEVICE_ID | grep \ Finger | sed 's/.*\ Finger\ (\([0-9]*\).*/\1/'`

xinput list | grep Magic
printf "DEVICE_ID => ->$DEVICE_ID<-\n"

xinput list-props $DEVICE_ID | grep \ Finger
printf "FINGER_ID => ->$FINGER_ID<-\n"


xinput set-prop $DEVICE_ID $FINGER_ID 2, 2, 0
