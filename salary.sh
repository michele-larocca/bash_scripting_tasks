#!/bin/bash

echo -n "Please enter your monthly gross salary: "
read salary_grow

echo -n "Please enter your tax rate (in percentage): "
read tax

result=$(echo "scale=2; ($salary_grow - ($salary_grow*$tax/100))*12" | bc -l)

echo "Your total net annual salary is: $result"