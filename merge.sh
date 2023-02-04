#!/bin/bash

echo "Enter the name of the first JSON file: "
read file1

echo "Enter the name of the second JSON file: "
read file2

length=${#file1}

# Check if both files exist
if [ -f "$file1" ] && [ -f "$file2" ]; then
    # Create a new file with the name "merged.json"
    filename=${file1::length-3}

    # Merge the contents of the two files into the new file
    cat "$file1" "$file2" > "$filename"

    echo "Files merged into $filename"
else
    echo "One or both of the files do not exist."
fi

