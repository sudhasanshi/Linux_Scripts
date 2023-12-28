#!/bin/bash
#script to find pattern in files
echo "enter pattern to find"
read pattern

grep -rl $pattern * > output

if [ $? -eq 0 ]
then 
	echo "below files contain $pattern"
	cat output
else
	echo "pattern $pattern not found"
fi
rm output
