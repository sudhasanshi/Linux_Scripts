#!/bin/bash
echo "enter number to find it's sum of N numbers"
read num
sum=0
while [ $num -gt 0 ]
do
	sum=`expr $num + $sum`
	num=`expr $num - 1`
done
echo "sum of N numbers is $sum"
