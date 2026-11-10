#!/bin/bash

# Question: Write a shell script to calculate the factorial of a non-negative integer.

read -p "enter a no. " n
if ! [[ "$n" =~ ^[0-9]+$ ]]; then
    echo "Please enter a non-negative integer."
    exit 1
fi

f=1
i=1
while [ "$i" -le "$n" ]; do
    f=$((f * i))
    i=$((i + 1))
done

echo "Factorial is : $f"
