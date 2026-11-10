#!/bin/bash

# Question: Write a shell script to calculate the discount based on the purchase amount.
read -p "enter purchase amt " a
if [ $a -ge 100 ]
then
    d=$(echo "scale=1;0.2*$a"|bc)
elif [ $a -ge 50 ]
then
    d=$(echo "scale=1;0.1*$a"|bc)
else
    d=0
fi
echo "Discount is $d"
