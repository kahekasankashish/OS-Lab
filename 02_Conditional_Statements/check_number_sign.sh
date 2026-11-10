#!/bin/bash

# Question: Write a shell script to determine whether a number is positive, negative or zero.
read -p "enter a no. " n
if [ "$n" -gt 0 ]; then
    echo "positive"
elif [ "$n" -lt 0 ]; then
    echo "negative"
else
    echo "zero"
fi
