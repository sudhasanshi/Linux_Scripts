#!/bin/bash
echo "enter string to reverse"
read str
length=`echo -n "$str" | wc -c`
while [ $length -ge 1 ]
do
	char=`echo "$str" | awk -F "" '{print $NF}'`
	reverse=`echo "$reverse$char"`
	str=`echo "$str" | sed 's/.$//'`
	length=`expr $length - 1`
done
echo "$reverse"
