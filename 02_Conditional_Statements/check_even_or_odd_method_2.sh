#!/bin/bash

# Question: Write a shell script to check whether a given integer is even or odd using arithmetic evaluation.
read -p "enter no. " num
if (( num % 2 == 0 )); then
    echo "even"
else
    echo "odd"
fi
