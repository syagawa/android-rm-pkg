#!/bin/bash

echo $0
echo $1

SERIAL=$1

IFS=$'\n'
file=(`cat pkgs`)
ln=0
for line in "${file[@]}"; do
  echo $line
  l=`echo ${line} | sed -e "s/[\r\n]\+//g"`
  adb -s $SERIAL shell pm uninstall -k --user 0 $l
done
