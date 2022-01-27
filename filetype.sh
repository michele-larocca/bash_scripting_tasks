#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Error: Invalid number of argumentes."
    exit 1;
fi

file=$1

if [ -f $file ]; then
    echo "$file is a regualr file"
elif [ -L $file ]; then
    echo "$file is a soft/symbolic Link"
elif [ -d $file ]; then
    echo "$file is a directory"
else
    echo "$file file not exist"
fi