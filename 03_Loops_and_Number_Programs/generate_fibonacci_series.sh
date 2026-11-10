#!/bin/bash

# Question: Write a shell script to display Fibonacci numbers up to a given non-negative limit.

read -p "enter n " n
if ! [[ "$n" =~ ^[0-9]+$ ]]; then
    echo "Please enter a non-negative integer."
    exit 1
fi

a=0
b=1

if [ "$n" -ge 0 ]; then
    echo "$a"
fi
if [ "$n" -ge 1 ]; then
    echo "$b"
fi

c=$((a + b))
while [ "$c" -le "$n" ]; do
    echo "$c"
    a=$b
    b=$c
    c=$((a + b))
done
