#!/bin/bash

echo "Fan controll started"
gpio mode 6 out

while true
do
temperature=` cat /sys/class/thermal/thermal_zone0/temp`
# Upper edge
if [ $temperature -gt 60000 ]; then
  echo "Fan ON"
  gpio write 6 1
fi;

# Lower edge
if [ $temperature -lt 42000 ]; then
  echo "Fan OFF"
  gpio write 6 0
fi
sleep 3
done
