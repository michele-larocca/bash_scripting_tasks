#!/bin/bash

string="Fedora is a free operating system"
echo "*** Original string: $string ***"
echo ""

echo "Original string length: ${#string}"

echo ""
echo "*** Replacing and Deleting Substring - elaborations ***"
echo "changed 'Fedora' with 'Ubuntu': ${string/Fedora/Ubuntu}" 
echo "delete first word found 'free' : ${string/free}" 
echo "delete all characters 'e' found : ${string//e}" 

echo ""
echo "*** Extract String elaborations ***"
echo "Extract 'free' word by original string: ${string:12:4}"
echo "Extract the all the sentence after 'free' word: ${string:12}"
echo "Find position of 'is' (count start from 1): $(expr index "$string" "is")"

echo ""
echo "*** Converting String elaborations ***"
echo "All UPPER CASE: ${string^^}"
echo "All lower CASE: ${string,,}"
echo "Only first character UPPER CASE: ${string^}"
echo "Only first character lower CASE: ${string,}"
echo "Only 'af' character UPPER CASE: ${string^^[af]}"