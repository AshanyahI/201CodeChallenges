#!/bin/bash

# Create four directories
mkdir dir1
mkdir dir2
mkdir dir3
mkdir dir4

# Put directory names in an array
dirs=("dir1" "dir2" "dir3" "dir4")

# Create a new .txt file in each directory using a loop
for dir in "${dirs[@]}"
do
    touch "${dir}/file.txt"
done

# Display a message indicating that the files were created
echo "New .txt files created in the following directories:"
echo "${dirs[@]}"
