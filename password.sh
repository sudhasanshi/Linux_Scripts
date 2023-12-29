#!/bin/bash
#script to hide password while entering it using -s 
echo "enter name"
read name
echo "password"
read -s password
echo " $name $password"
