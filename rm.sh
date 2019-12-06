#!/bin/bash

echo $0
echo $1

SERIAL=$1

IFS=$'\n'
file=(`cat pkgs`)
ln=0
for line in "${file[@]}"; do
	echo $line
  adb -s $SERIAL shell pm uninstall -k --user 0 $line
done
