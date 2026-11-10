#!/bin/bash

# Question: Write a shell script to count the number of words in a given file.

read -p "Enter filename: " filename
if [ -f "$filename" ]; then
    wc -w < "$filename"
else
    echo "File not found."
    exit 1
fi
