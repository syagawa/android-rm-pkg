#!/bin/bash

SERIAL=$1
PATTERN=$2
adb -s $SERIAL shell pm list packages | grep $PATTERN
