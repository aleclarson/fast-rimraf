#!/usr/bin/env bash
set -e

to_remove=$1

if [ "$to_remove" == '' ];
then
  echo 'rimraf expects a pathname'
  exit 1
fi

destination=~/`basename $to_remove`-$RANDOM-$RANDOM-$RANDOM

if [ -e "$to_remove" ] || [ -h "$to_remove" ];
then
  mv "$to_remove" "$destination"
  nohup rm -rf "$destination" &>/dev/null &
fi
