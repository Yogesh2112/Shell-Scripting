#!/bin/bash

read -p "Enter the filename you want to search for: " filename

if [[ -e "$filename" ]];
then 
if [[ -f "$filename" ]];
then echo "$filename exists and its a file."
elif [[ -d "$filename" ]];
then echo "$filename exists and its a directory."
else echo "$filename exists but its not a regular file or directory."
fi
else echo "$filename doesnt exist."
fi
