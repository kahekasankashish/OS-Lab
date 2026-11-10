#!/bin/bash

# Question: Write a shell script to find the largest and smallest among three numbers.
read -p "enter a: " a
read -p "enter b: " b
read -p "enter c: " c

if [ "$a" -ge "$b" ] && [ "$a" -ge "$c" ]; then
    echo "a is among the greatest"
elif [ "$b" -ge "$a" ] && [ "$b" -ge "$c" ]; then
    echo "b is among the greatest"
else
    echo "c is the greatest"
fi

if [ "$a" -le "$b" ] && [ "$a" -le "$c" ]; then
    echo "a is among the smallest"
elif [ "$b" -le "$a" ] && [ "$b" -le "$c" ]; then
    echo "b is among the smallest"
else
    echo "c is the smallest"
fi
