#!/bin/bash
echo "enter the path to check it's file or dir or link"
read path

if [ -f $path ]
then
	echo "$path is file"
elif [ -d $path ]
then
	echo "$path is directory"
elif [ -L $path ]
then
	echo "$path is Link"
else
	echo "$path is invalid option"
fi
