#!/bin/bash

INTERVAL=${INTERVAL:=300}

if [ -z $USERNAME ] || [ -z $PASSWORD ];
then
  echo "Error: specify environment vaiables USERNAME and PASSWORD"
  exit 1;
fi

while [ : ]
do
  curl -s --user $USERNAME:$PASSWORD https://ddns.do.de?myip=$(curl -s https://api.ipify.org)
  echo 
  sleep $INTERVAL
done
