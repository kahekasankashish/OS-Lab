#!/bin/bash

# Question: Write a shell script to display alternate digits of a five-digit integer, starting from the rightmost digit.

read -p "enter a 5 digit no.: " n
if ! [[ "$n" =~ ^[0-9]{5}$ ]]; then
    echo "Please enter a five-digit non-negative integer."
    exit 1
fi

for (( i=1; i<=5; i++ )); do
    d=$((n % 10))
    n=$((n / 10))
    a=$((i % 2))
    if [ "$a" -eq 1 ]; then
        echo "$d"
    fi
done
