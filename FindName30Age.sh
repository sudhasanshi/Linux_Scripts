#!/bin/bash
echo "enter filename"
#enter filename which has name and age
read filename

count=1
while read line
do
age=`echo $line | awk '{print $NF}'`

if [ $count -gt 1 ]
then
	if [ $age -gt 30 ]
	then
	name=`echo $line | awk '{print $1}'`
	echo "$name"
	fi
fi
count=`expr $count + 1`
done < $filename
