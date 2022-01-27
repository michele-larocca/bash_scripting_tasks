#!/bin/bash

param1=$1
param2=$2


common_divisor() {
  if [ "$1" -le 1 ]; then
    echo "1"
    return;
  fi

  if [ $(( $param1 % $1 )) -eq 0 ] && [ $(( $param2 % $1 )) -eq 0 ]; then
    echo "$1"
  else
    common_divisor $(( $1 - 1 ))
  fi 
}

minor() {
  if [ $1 -lt $2 ]; then echo "$1"; else echo $2; fi
}

min=$(minor $param1 $param2)
result=$(common_divisor $(($min)))
echo "The gcd of $param1 and $param2 is: $result"