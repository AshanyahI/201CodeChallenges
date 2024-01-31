#!/bin/bash

# Script: Ops 201 Class 06 Ops Challenge Solution
# Author: Ashanyah Israel
# Date of latest revision: 1/28/24
# Purpose: Create a script that detects if a file or directory exists, then creates it if it does not exist.

# Main
# Create a script that detects if a file or directory exists, then creates it if it does not exist.
# Your script must use at least one array, one loop, and one conditional.
# End

# File or directory to check
file_or_dir="example.txt"

# Check if the file or directory exists
if [[ -e "$file_or_dir" ]]
then
    echo "$file_or_dir exists on your filesystem."
else
    # Create the file or directory
    touch "$file_or_dir" && echo "Created $file_or_dir"
fi
