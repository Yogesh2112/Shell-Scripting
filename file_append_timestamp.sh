#!/bin/bash

read -p "Enter the file name you want to append to: " filename

if [ -f $filename ];then 
	read -p "Enter the log message you want to append: " content
	echo "$(date) - $content" >> $filename
	echo "Log message appended successfully."
else
	echo "File not found, creating new file..."
	touch "$filename"
	read -p "Enter the log message you want to append: " content
	echo "$(date) - $content" >> $filename
        echo "Log message appended successfully."
fi
