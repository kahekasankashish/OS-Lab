#!/bin/bash

# Question: Write a shell script to check whether a given integer is even or odd using the remainder operator.
read -p "enter a" n
a=$(($n%2))
b=0
if [ $a -eq $b ]; then
		echo "even"
else
	echo "odd"
fi



