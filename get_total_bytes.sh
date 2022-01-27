#!/bin/bash

total=0

for i in $@
do
    total=$(($total+$(du -b $i | cut -f1)))
done

echo "Total bytes is : $total"