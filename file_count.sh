#!/bin/bash

read -p "Enter the File name: " filename

echo "Line count in $filename is: $(cat $filename | wc -l)" 

echo "Word count in $filename is: $(cat $filename | wc -w)"

echo "Character count in $filename is: $(cat $filename | wc -c)"
