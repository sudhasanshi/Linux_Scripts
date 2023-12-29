#!/bin/bash
echo "enter filename to check it's empty or not"
read filename
if [ -e $filename ]
then
	echo "file exist"
else
	echo "file not exist"
fi

if [ -s $filename ]
then
        echo "It's not empty file"
else
        echo "It's empty file"
fi

