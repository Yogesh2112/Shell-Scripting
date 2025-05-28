#!/bin/bash

folder=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir $folder

for file in *;
do
	if [ -f $file ];
	then 
		if [[ $file == *.txt ]];
		then 
			cp "$file" "$folder"
			echo "Copied $file to $folder"
		fi
	fi

done
