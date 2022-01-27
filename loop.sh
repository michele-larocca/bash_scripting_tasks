#!/bin/bash

echo "*** For with: ((i=0; i<10; i++)) ***"
for ((i=0; i<10; i++))
do
    echo "Hello, Friend $(($i+1))"
done

echo ""
echo "*** For with: i in {0..9} ***"
for i in {0..9}
do
    echo "Hello, Friend $(($i+1))"
done

echo ""
echo "*** For with: i in /var/* ***"
for i in /var/*
do
    echo "$i"
done

num=0
echo ""
echo "*** While loop: [ $num -le 9 ] ***"
while [ $num -le 9 ] 
do
    echo "Hello, Friend $(($num+1))"
    num=$(($num+1))
done

num=0
echo ""
echo "*** Until loop: [ $num -le 9 ] ***"
until [ $num -gt 9 ] 
do
    echo "Hello, Friend $(($num+1))"
    num=$(($num+1))
done

num=0
echo ""
echo "Infinite For Loop"
for ((;;)); do
    num=$(($num+1))
    echo "Loop num $num"
    read -p "Write \"exit\" to exit from loop or other to continue loop: " input

    if [[ $input = "exit" ]]; then
        break
    fi
done

num=0
echo ""
echo "Infinite While Loop"
while [ true ]; do
    num=$(($num+1))
    echo "Loop num $num"
    read -p "Write \"exit\" to exit from loop or other to continue loop: " input

    if [ "$input" = "exit" ]; then
        break
    fi
done