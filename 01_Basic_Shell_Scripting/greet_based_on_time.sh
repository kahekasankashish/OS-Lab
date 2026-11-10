#!/bin/bash

# Question: Write a shell script to display a greeting according to the current time.

hr=$(date +"%H")
if [ "$hr" -lt 12 ]
then
    echo "Good Morning!"
elif [ "$hr" -lt 16 ]
then
    echo "Good Afternoon!"
else
    echo "Good evening"
fi
