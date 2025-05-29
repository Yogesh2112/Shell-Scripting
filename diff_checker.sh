#!/bin/bash

read -p "Enter the name of file you want to monitor - " file

if [[ ! -f $file ]];
then 
	echo "File $file doesn't exists."
	exit 1
fi

read -p "Enter the duration you want to check in - " duration

<< Comment

# Just to check if file is modifed or not
before=$(md5sum $file)
sleep $duration
after=$(md5sum $file)
if [[ $before == $after ]];
then echo "No changes found."
else
echo "File has changed."
fi

Comment


# Get full changes in file

file_snapshot="${file}_snapshot"
echo "New file name is $file_snapshot"

cp "$file" "$file_snapshot"

sleep $duration

if diff "$file" "$file_snapshot" > /dev/null; then
	echo "No changes detected."
else
	echo "Changed found."
	diff "$file" "$file_snapshot"
fi

rm -f "$file_snapshot"
