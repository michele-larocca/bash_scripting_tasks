#!/bin/bash

files=("f1.txt" 123 "f3.txt" true "f5.txt")

echo "files with * : ${files[*]}"
echo "files with @ : ${files[@]}"
echo "number of files : ${#files[@]}"
echo ""
files[0]="a.txt"
files+=("adder.txt")

echo "***** elaboration files"
echo "files : ${files[@]}"
echo "number of files : ${#files[@]}"
echo ""

unset files[0]
echo "***** unset files[0]"
echo "files : ${files[@]}"
echo "number of files : ${#files[@]}"
echo ""

unset files
echo "***** unset files"
echo "list : ${files[@]}"
echo "number of files : ${#files[@]}"
echo ""