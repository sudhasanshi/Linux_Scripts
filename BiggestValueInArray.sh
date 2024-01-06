#!/bin/bash
echo "enter array values "
read -a array
big=${array[0]}
for i in ${array[@]}
do
	if [ $i -gt $big ]
	then
		big=$i
	fi
done
echo "$big is big in array"
