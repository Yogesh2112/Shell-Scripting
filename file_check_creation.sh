#!/bin/bash

read -p "Enter the name of file to create: " filename

if [ -f $filename ];
then echo "File with name $filename already exist."
else 
	touch "$filename"
	echo "$filename created successfully."
fi
