#!/bin/bash
<< comments
write script if value is
1. Monday create directory temp1 and temp2
2. Tuesady create file1 and file2 under temp1 and temp2 
3. Wensday add content to both files
4. Thursday take backup of file
5. Friday delete file1 and file2
6. Saturday or Sunday print Holiday
comments
echo "enter option"
read day
#day=$(date '+%a')
case $day in
	'Mon') mkdir -p /home/ubuntu/Linux_Scripts/temp1 /home/ubuntu/Linux_Scripts/temp2
		;;
	'Tue') touch /home/ubuntu/Linux_Scripts/temp1/file1 /home/ubuntu/Linux_Scripts/temp2/file2
                ;;
	'Wed') echo "hello all good morning" > /home/ubuntu/Linux_Scripts/temp1/file1
	       echo "welcometo devops class" > /home/ubuntu/Linux_Scripts/temp2/file2
                ;;
	'Thu') cp /home/ubuntu/Linux_Scripts/temp1/file1 /home/ubuntu/Linux_Scripts/temp1/file1_backup
	       cp /home/ubuntu/Linux_Scripts/temp2/file2 /home/ubuntu/Linux_Scripts/temp2/file2_backup
                ;;
	'Fri') rm /home/ubuntu/Linux_Scripts/temp1/file1 /home/ubuntu/Linux_Scripts/temp2/file2
                ;;
	'Sat' | 'Sun') echo "It's Holiday"
                ;;
esac
