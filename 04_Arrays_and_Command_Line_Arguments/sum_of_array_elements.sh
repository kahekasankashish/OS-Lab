#!/bin/bash

# Question: Write a shell script to read an array of integers and calculate the sum of its elements.

echo "enter the elements"
read -r -a arr

sum=0
len=${#arr[*]}

for (( i=0; i<len; i++ ))
do
    if ! [[ "${arr[i]}" =~ ^-?[0-9]+$ ]]; then
        echo "Please enter integers only."
        exit 1
    fi
    sum=$((sum + arr[i]))
done

echo "$sum"
