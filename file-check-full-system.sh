#!/bin/bash

read -p "File name that need to be found: " filename

found_file=$(find / -name "$filename" 2>/dev/null)

if [[ -z "$found_file" ]];then
echo "$filename not found in system."
else
echo "$filename found at: $found_file "
fi
