#!/bin/bash
set -x
#concerned person should get mail whenever the servers are down
services="sshd httpd smtp jenkin java ngnix postfix"
for i in $services 
do
	ps -C $i
if [ $? -eq 0 ]
then
	echo "$i" >> services.txt
fi
done
if [ -s services.txt ]
then
	cat services.txt | mail -s "services are stopped runnuing" -c sudhasanshi@gmail.com
	rm services.txt
fi

