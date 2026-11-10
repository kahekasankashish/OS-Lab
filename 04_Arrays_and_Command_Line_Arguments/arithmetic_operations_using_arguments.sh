#!/bin/bash

# Question: Write a shell script to perform addition, subtraction and multiplication using two command-line integer arguments.

if [ "$#" -ne 2 ] || ! [[ "$1" =~ ^-?[0-9]+$ ]] || ! [[ "$2" =~ ^-?[0-9]+$ ]]; then
    echo "Usage: $0 <integer1> <integer2>"
    exit 1
fi

a=$1
b=$2

sum=$((a + b))
sub=$((a - b))
prod=$((a * b))

echo "sum is $sum"
echo "difference is $sub"
echo "product is $prod"
