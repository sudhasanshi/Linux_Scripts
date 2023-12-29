#!/bin/bash
set -x
echo "enter number to check prime or not?"
read num
number=$num
while [ $num -gt 1 ]
do
	rem=`expr $number % $num >> out` 
#	echo "$rem" >> out
	num=`expr $num - 1`
done
        #count=`grep -c -w "0" out`
	count=`cat out | grep -c "0"`
	if [ $count -eq 1 ]
	then
		echo "It's prime"
	else
		echo "It's not prime number"
	fi
	rm out
