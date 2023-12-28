#!/bin/bash
#Script to delete old builds and retails recent 10 builds
retain_builds=10
ls -lrt | awk 'NR>1 {print $NF}' > output

total_builds=`cat output | wc -l`
delete_buils=`expr $total_builds - $retain_builds`

head -$delete_builds output | xargs rm -rf 
rm output
