#!/bin/bash

# Question: Write a shell script to find the GCD of two integers.

read -p " enter a " a
read -p " enter b " b

if ! [[ "$a" =~ ^-?[0-9]+$ ]] || ! [[ "$b" =~ ^-?[0-9]+$ ]]; then
    echo "Please enter integers."
    exit 1
fi

a=${a#-}
b=${b#-}

if [ "$a" -eq 0 ] && [ "$b" -eq 0 ]; then
    echo "GCD is undefined for two zero values."
    exit 1
fi

if [ "$a" -gt "$b" ]; then
    max=$a
else
    max=$b
fi

i=1
gcd=0
while [ "$i" -le "$max" ]; do
    x=$((a % i))
    y=$((b % i))
    if [ "$x" -eq 0 ] && [ "$y" -eq 0 ]; then
        gcd=$i
    fi
    i=$((i + 1))
done

echo " GCD is : $gcd"
