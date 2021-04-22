#!/usr/bin/env bash
set -e

to_remove=$1
if [ "$to_remove" == '' ];
then
  echo 'Error, you must specify a directory name to remove'
  exit 1
fi
destination=~/`basename $to_remove`-$RANDOM-$RANDOM-$RANDOM
mv $to_remove $destination
(rm -rf $destination) &
