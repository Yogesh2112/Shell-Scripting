#!/bin/bash

read -p "Name of file: " filename

touch "$filename"

echo "File created with name $filename"

read -p "Content of File: " content

echo $content >> "$filename"

echo "File updated with the content provided."

echo "File content is: $(cat "$filename")"
