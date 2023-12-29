#!/bin/bash
echo -e "enter file name - \c"
read filename

if [ -f $filename ]
then
	if [ -w $filename ]
	then
		echo "type some text dat. to quit press ctrl+c"
		cat >> $filename
	else
		echo " file $filename does not have write permission"
	fi
else
	echo "file $filename does not exist"
fi
