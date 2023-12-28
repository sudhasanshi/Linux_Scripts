#!/bin/bash

#This is script to triger mail to concerned people when cpu usage crossed threshold value

memory=`df -h | awk 'NR==2 {print $(NF-1)}' | sed 's/%//g'`

if [ $memory -gt 20 ]
then
	echo "cpu $memory crossed threshold value" | mail -s "Reached Threshold value" -c sudhasanshi@gmail.com
fi
