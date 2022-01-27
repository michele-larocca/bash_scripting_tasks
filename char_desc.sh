#!/bin/bash

CHAR=$1

usage () {
    echo "Usage: call $0 with a single param valued with a single char!"
}

echo "check -> ${#CHAR}"

if [ $# > 1 ]; then
    usage
    echo "skipped other param after the first."
fi

if [ ${#CHAR} != 1 ]; then
    usage
    exit 0
fi

case $CHAR in
    [a-z])
        echo "$CHAR is a Small Alphabet.";;
    [A-Z])
        echo "$CHAR is a Big Alphabet.";;
    [0-9])
        echo "$CHAR is a Number.";;
    *)
        echo "$CHAR is a Special character.";;
esac