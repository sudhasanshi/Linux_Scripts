#!/bin/bash
read -p "enter three numbers to compair - " a b c
if [ $a -gt $b ] && [ $a -gt $c ]
then
	echo "$a is biggest"
elif [ $b -gt $a ] && [ $b -gt $c ]
then
	echo "$b is biggest"
else
	echo "$c is biggest"
fi
