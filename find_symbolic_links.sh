#!/bin/bash

links=""

for l in *;
do 
	if [ -L $l ];
	then links+="$l"$'\n'
	fi
done

if [ -n "$links" ];
then echo "These are all the symbolic links present in current directory: "
	echo "$links"
else echo "No symbolic links found."
fi
