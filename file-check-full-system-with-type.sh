#!/bin/bash

read -p "File name that needs to be found: " filename

found_files=$(find / -name "$filename" 2>/dev/null)

if [[ -z "$found_files" ]];then
	echo "$filename not found in the system."
else
	echo "$filename found at: "
	while IFS= read -r path;do
		if [[ -f "$path" ]];then
			echo "$path -> Type - FILE"
		elif [[ -d "$path" ]]; then
			echo "$path -> Type - DIRECTORY"
		else echo "$path -> Type - UNKNOWN"
		fi
	done <<< "$found_files"
fi
