#!/bin/bash

# Question: Write a shell script to calculate the ticket price based on a person's age.
read -p "Enter age: " a
if ! [[ "$a" =~ ^[0-9]+$ ]]; then
     echo "Please enter a valid non-negative age."
     exit 1
fi
if [ $a -lt 12 ] && [ $a -ge 0 ] 
then
     echo "rs 5"
elif [ $a -lt 18 ] && [ $a -ge 12 ]
then
     echo "rs 10"
elif [ $a -lt 60 ] && [ $a -ge 18 ]
then
     echo "rs 20"
else
     echo "rs 15"
fi
