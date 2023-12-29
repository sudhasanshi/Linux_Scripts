#!/bin/bash
echo "enter first number"
read num1
echo "enter second number"
read num2
echo "enter options + to add, - to sub, * to mul, / to div and % to mod"
read option

case $option in
	'+') add=`expr $num1 + $num2`
		echo "addition value is $add"
		;;
	'-') sub=`expr $num1 - $num2`
                echo "substraction value is $sub"
                ;;
	'*') mul=`expr $num1 \* $num2`
                echo "multiplication value is $mul"
                ;;
	'/') div=`expr $num1 / $num2`
                echo "division value is $div"
                ;;
	'%') mod=`expr $num1 % $num2`
                echo "modulus value is $mod"
                ;;
	*) echo "Invalid options"
		;;
esac
