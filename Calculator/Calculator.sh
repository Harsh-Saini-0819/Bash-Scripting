#!/bin/bash

echo "----------WELCOME TO THE CALCULATOR----------"
echo "What do you want to perform -----"
echo "a. Addition  b. Subtraction  c. Multiplication  d. Division"
read -p  "Enter your choice : " choice

case $choice in
	a)
		read -p "Enter first no. : " num1
		read -p "Enter second no. : " num2
		echo "Addition is : $(( $num1 + $num2 ))";;
	b)
		read -p "Enter first no. : " num1
		read -p "Enter second no. : " num2
		echo "Subtraction is $(( $num1 - $num2 ))";;
	c)
		read -p "Enter first no. : " num1
		read -p "Enter second no. : " num2
		echo "Multiplication is : $(( $num1 * $num2 ))";;
	d)
		read -p "Enter numerator : " num
		read -p "Enter denominator : " den
		
		if [[ $den -eq 0 ]]
		then
			echo "Denominator cannot be 0"
		else
			echo "Division is $(($num/$den))"
		fi
		;;
	*) echo "Not a valid Input!!!!!"

esac
echo "----------Thanks For Using This Calulator----------"
