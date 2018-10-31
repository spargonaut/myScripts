#!/bin/bash

#time ./gradlew clean build test connectedAndroidTest
time ./gradlew clean build test jacocoTestReport

