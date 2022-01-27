#!/bin/bash

echo "$#"
if [ $# != 1 ]; then
    echo "call $0 with only one param with the path of a regular file"
    exit
elif [ ! -f $1 ]; then
    echo "The file is not a regular file"
    exit
fi

nlines=$(wc -l < $1)
echo "There are $nlines in $1"
