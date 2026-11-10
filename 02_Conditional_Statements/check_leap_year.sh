#!/bin/bash

# Question: Write a shell script to check whether a given year is a leap year.
read -p "Enter year : " yr
if (( yr % 400 == 0 )); then
    echo "Leap year"
elif (( yr % 100 == 0 )); then
    echo "Not a leap year"
elif (( yr % 4 == 0 )); then
    echo "Leap year"
else
    echo "Not a leap year"
fi
