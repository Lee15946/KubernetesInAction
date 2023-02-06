#!/bin/bash
trap "exit" INT
INTERVAL=$1
mkdir /var/htdocs
echo Configured to generate new fortune every "$INTERVAL" seconds
while :
do
  echo $(date) Writing fortune to /var/htdocs/index.html
  /usr/games/fortune > /var/htdocs/index.html
  sleep "$INTERVAL"
done


