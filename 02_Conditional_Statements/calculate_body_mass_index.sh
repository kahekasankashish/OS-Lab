#!/bin/bash

# Question: Write a shell script to calculate BMI using weight and height and classify the result.
read -p "enter weight (kg): " w
read -p "enter height (m): " h

if ! awk -v w="$w" -v h="$h" 'BEGIN { exit !(w > 0 && h > 0) }'; then
    echo "Please enter positive numeric weight and height values."
    exit 1
fi

bmi=$(awk -v w="$w" -v h="$h" 'BEGIN { printf "%.2f", w/(h*h) }')
echo "BMI is: $bmi"

awk -v bmi="$bmi" 'BEGIN {
    if (bmi < 18.5)
        print "Underweight"
    else if (bmi < 25)
        print "Normal weight"
    else if (bmi < 30)
        print "Overweight"
    else
        print "Obese"
}'
