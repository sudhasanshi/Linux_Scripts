#!/bin/bash
#script to read file line by line"
echo "enter file to read line by line"
read file
lineNo=1
while read line
do
	echo "This is $lineNo : $line"
	lineNo=`expr $lineNo + 1`
done < $file
