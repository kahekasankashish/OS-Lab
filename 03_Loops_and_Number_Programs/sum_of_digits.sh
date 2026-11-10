#!/bin/bash

# Question: Write a shell script to calculate the sum of the digits of a non-negative integer.

read -p "enter n " n
if ! [[ "$n" =~ ^[0-9]+$ ]]; then
    echo "Please enter a non-negative integer."
    exit 1
fi

sum=0
while [ "$n" -gt 0 ]; do
    d=$((n % 10))
    sum=$((sum + d))
    n=$((n / 10))
done

echo "Sum is : $sum"
