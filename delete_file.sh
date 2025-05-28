#!/bin/bash

read -p "Enter filename to delete: " filename

if [ ! -e $filename ];
then echo "$filename doesn't exist."
else
 rm -f $filename
 echo "$filename deleted successfully."
fi

