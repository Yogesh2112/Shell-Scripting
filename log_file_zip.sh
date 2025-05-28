#!/bin/bash

read -p "How many days older log files you want to zip: " lastdate

# Create output filename with date
output_file="old_logs_$(date +%F).tar.gz"

# Run the find + tar command
find . -name "*.log" -type f -mtime +"$lastdate" -print0 | tar --null -czf "$output_file" --files-from=-

echo "Archived log files older than $lastdate days into: $output_file"


