#!/bin/bash

read -p "Enter your choice 1- Create File; 2- Delete; 3- View; 4- Rename -- " choice

case $choice in

1)
	read -p "Give filename to create - " file
	touch "$file"
	echo "Created a new file $file"
	;;
2)
	read -p "Give filename to delete - " file
        rm -f "$file"
	echo "Deleted the file $file"
        ;;
3)
	read -p "Give filename to view - " file
	cat $file
	;;
4)
	read -p "Give filename to rename - " file
	read -p "Give new filename - " file1
        mv $file $file1
	echo "$file renamed to $file1"
        ;;
esac
