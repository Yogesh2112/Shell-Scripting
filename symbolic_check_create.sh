#!/bin/bash

read -p "Enter the file name: " filename

read -p "Enter the link name: " link

if [ -f $filename ];
then
	if [ -L $link ];
		then echo "Symbolic link is already present."
	else
		echo "No symbolic link found with $link name. Creating new link..."
		ln -s $filename $link
		echo "New symbolic link created with name $link."
	fi

else
	echo "File not found."

fi
