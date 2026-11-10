#!/bin/bash

# Question: Write a shell script to calculate the sum of the first N natural numbers.

read -p "enter a no " n
if ! [[ "$n" =~ ^[0-9]+$ ]]; then
    echo "Please enter a non-negative integer."
    exit 1
fi

i=1
sum=0
while [ "$i" -le "$n" ]; do
    sum=$((sum + i))
    i=$((i + 1))
done

echo " Sum is : $sum"
