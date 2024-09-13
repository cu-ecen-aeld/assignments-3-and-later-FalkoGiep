#!/bin/bash

filedir=$1
searchstr=$2

if [ -z "${filedir}" ];
  then
    echo "No argument supplied"
    exit 1
fi
if [ -z "${searchstr}" ];
  then
    echo "No second argument supplied"
    exit 1
fi
[ -d "$filedir" ] || (echo "Not a directory" && exit 1)


matchcount=$(grep -R -x -e "$searchstr" $filedir | wc -w)
filecount=$(grep -R -x -l -e "$searchstr" $filedir | wc -l)

echo "The number of files are $filecount and the number of matching lines are $matchcount"