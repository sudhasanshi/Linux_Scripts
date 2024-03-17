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
	


#!/bin/bash
arr="1 2 4 5"
values=($arr)
big=${values[0]}
for i in ${values[@]}
do
        if [ $i -gt $big ]
        then
                big=$i
        fi
done
echo "Biggest value in Array is $big"
