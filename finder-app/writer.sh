#!/bin/bash

filedir=$1
text=$2

if [ -z "${filedir}" ];
  then
    echo "No argument supplied"
    exit 1
fi
if [ -z "${text}" ];
  then
    echo "No second argument supplied"
    exit 1
fi

if [ ! -f "$filedir" ];
  then
    mkdir -p $(dirname "$filedir")
    touch "$filedir"
    [ -f "$filedir" ] || (echo "Not a file created" && exit 1)
fi

> $filedir

echo "${text}" >> "$filedir"