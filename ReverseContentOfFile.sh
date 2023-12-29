#!/bin/bash
echo "enter the file name to reverse it's content"
#script to reverse content of file (last line will be printed as first line,last but one line printed as second line and so on 
read filename
line_count=`wc -l $filename | awk '{print $1}'`
while [ $line_count -ge 1 ]
do
	line=`head -$line_count $filename | tail -1`
	echo "$line"
	line_count=`expr $line_count - 1`
	
done

