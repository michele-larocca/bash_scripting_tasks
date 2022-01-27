#!/bin/bash

echo -n "Please a string whit some asterisks:"
read string
noast=${string//\*}
echo "UPDATE string: ${noast^^}"