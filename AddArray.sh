#!/bin/bash

#adding content of array
array=" 20 47 08 86 76 "
for i in $array
do
	sum=`expr $sum + $i`
done
echo "array addition value $sum"
