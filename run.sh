#!/bin/bash

while true ; do
  echo "show dbs;"| mongo --host mongodb
  if [ $? -eq 0 ]; then
    break
  else
    sleep 10
  fi
done

mongo --host mongo <catalogue.js
mongo --host mongo <users.js
