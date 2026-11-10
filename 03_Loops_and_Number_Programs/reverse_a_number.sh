#!/bin/bash

# Question: Write a shell script to reverse a non-negative integer.

read -p "Enter a no. " n
if ! [[ "$n" =~ ^[0-9]+$ ]]; then
    echo "Please enter a non-negative integer."
    exit 1
fi

rev=0
while [ "$n" -gt 0 ]; do
    d=$((n % 10))
    rev=$((rev * 10 + d))
    n=$((n / 10))
done

echo "Reverse is : $rev"
