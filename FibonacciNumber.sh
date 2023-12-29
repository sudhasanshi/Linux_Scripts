#!/bin/bash
echo "enter number to find fibonacci numbers"
read num
count=0
num1=0
num2=1
echo -e "$num1\n$num2"
while [ $count -le $num ]
do

	fibo=`expr $num1 + $num2`
	num1=$num2
	num2=$fibo
	count=`expr $count + 1`
	echo "$fibo"
done
