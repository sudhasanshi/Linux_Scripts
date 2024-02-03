#!/bin/bash
value="banana"
num=$(echo $value | grep -o "a" | wc -l)
echo "$num"
