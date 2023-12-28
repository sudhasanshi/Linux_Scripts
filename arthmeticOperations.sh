#!/bin/bash
echo "enter first number"
read num1
echo "enter second number"
read num2

#Addition of two numbers
add=`expr $num1 + $num2`
echo "additon of $num1 and $num2 is $add"

#Substraction of two numbers
diff=`expr $num1 - $num2`
echo "difference of $num1 and $num2 is $diff"

#Multiplication of two numbers
mul=`expr $num1 \* $num2`
echo "multiplication of $num1 and $num2 is $mul"

#division of two numbers
div=`expr $num1 / $num2`
echo "division of $num1 and $num2 is $div"

#modolus of two numbers
mod=`expr $num1 % $num2`
echo "mod of $num1 and $num2 is $mod"
