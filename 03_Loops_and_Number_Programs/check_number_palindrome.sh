#!/bin/bash

# Question: Write a shell script to check whether a non-negative integer is a palindrome.

read -p "enter a no. " n
if ! [[ "$n" =~ ^[0-9]+$ ]]; then
    echo "Please enter a non-negative integer."
    exit 1
fi

rev=0
temp=$n
while [ "$n" -gt 0 ]; do
    d=$((n % 10))
    rev=$((rev * 10 + d))
    n=$((n / 10))
done

if [ "$temp" -eq "$rev" ]; then
    echo "Palindrome"
else
    echo "Not palindrome"
fi
