#!/bin/bash

# Check if jq is installed
if ! command -v jq &>/dev/null; then
  echo "jq is not installed. Installing now..."
  sudo apt-get install jq
fi

# Continue with the rest of the script that uses jq
# ...

echo "Enter the name of the first JSON file: "
read file1

echo "Enter the name of the second JSON file: "
read file2

length=${#file1}

# Check if both files exist
if [ -f "$file1" ] && [ -f "$file2" ]; then
    # Create a new file with the name "merged.json"
    filename=${file1::length-8}

    # Merge the contents of the two files into the new file
    jq -s add "$file1" "$file2" > "$filename.json"


    echo "Files merged into $filename"
else
    echo "One or both of the files do not exist."
fi

