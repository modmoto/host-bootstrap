#!/bin/bash

pushd /usr/local/db-backups/
today=$(date '+%Y-%m-%d_%H-%M-%S')

mkdir $today
echo "created $today in $(pwd)"

pushd $today

mongodump --uri=$1 -o $2

popd

directoryCount=0
lastDir=""
for currentDir in $(ls -1vdr */) ; do
  ((directoryCount+=1))
  lastDir=$currentDir
done

echo "There are $directoryCount directories"
echo "oldest backup is $lastDir"

if [ $directoryCount -gt 7 ]
then
  echo "have more than 7 backups, deleting backup: $lastDir"
  rm -rf "$lastDir"
fi

popd


