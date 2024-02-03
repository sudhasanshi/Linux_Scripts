#!/bin/bash
echo -e "enter file name"
read filename

if [ -f $filename ]
then
        echo "it's file"
        if [ -w $filename ]
        then
                echo "file has write permission"
        elif [ -r $filename ]
        then
                echo "file has only read permission"
        else
                echo "file has execution permission only"
        fi
elif [ -d $filename ]
then
        echo "It's directory"
else
        echo "wrong input"
fi
