#!/bin/bash
SERIAL=$1
echo "Serial number is $SERIAL"

IFS=$'\n'
file=(`cat pkgs`)
ln=0
for line in "${file[@]}"; do
  echo $line
  l=`echo ${line} | sed -e "s/[\r\n]\+//g"`
  adb -s $SERIAL shell pm uninstall -k --user 0 $l
done
