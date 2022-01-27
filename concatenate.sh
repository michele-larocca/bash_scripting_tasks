#!/bin/bash

result=""
resultv1=""

for i in $@
do
    result+=$i
    resultv1=$resultv1$i
done

echo "The concatenate result by += is $result"
echo 'The concatenate result is $1$2 ' $resultv1