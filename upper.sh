#!/bin/bash

echo "Displaying Content of $1 in upper case."
cat $1 | tr [:lower:] [:upper:]