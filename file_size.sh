#!/bin/bash

for file in *;
do
	if [[ -f $file ]];
	then
		echo "$(du -h $file | sort -nr)"
	fi
done
