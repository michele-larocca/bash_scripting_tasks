#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Invalid argument, call $0 with only one param with the year value to check"
    exit 1;
fi

year=$1

if [ $(($year%400)) -eq 0 ] || [ $(($year%4)) -eq 0 ] && [ $(($year%100)) -ne 0 ]
then
    echo "$year is a leap year"
else
    echo "$year is NOT a leap year"
fi