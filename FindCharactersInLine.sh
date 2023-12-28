#!/bin/bash
#script to find numbers of characters in line of file
echo "enter file to find line characters"
read file
lineN=1
while read line
do
	char=`echo "$line" | wc -c`
	echo "line no : $lineN has $char charactes"
	lineN=`expr $lineN + 1`
done < $file
