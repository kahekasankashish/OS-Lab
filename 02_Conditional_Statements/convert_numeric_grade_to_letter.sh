#!/bin/bash

# Question: Write a shell script to convert a numerical grade into a letter grade.
read -p "enter a numerical grade: " g
if [ $g -ge 90 ] && [ $g -le 100 ]
then
      echo "A"
elif [ $g -ge 80 ] && [ $g -lt 90 ]
then
     echo "B"
elif [ $g -ge 70 ] && [ $g -lt 80 ]
then 
     echo "C"
elif [ $g -ge 60 ] && [ $g -lt 70 ]
then
     echo "D"
elif [ $g -ge 50 ] && [ $g -lt 60 ]
then 
     echo "E"
else
     echo "F"
fi

