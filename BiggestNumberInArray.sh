#!/bin/bash
echo "enter array values"
read -a Arr
Big=${Arr[0]}
for i in ${Arr[@]}
do
	if [ $i -gt $Big ]
	then 
		Big=$i
	fi
done
echo "Biggest value in Array is $Big"
	
