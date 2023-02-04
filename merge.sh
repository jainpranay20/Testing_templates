#!/bin/bash

echo "Enter the name of the JSON file: "
read filename

# Check if both files exist
if [ -f "$filename" ] && [ -f "$filename-1" ]; then
    # Create a new file with the name "merged.json"
    merged_filename="merged.json"

    # Merge the contents of the two files into the new file
    cat "$filename" "$filename-1" > "$merged_filename"

    echo "Files merged into $merged_filename"
else
    echo "One or both of the files do not exist."
fi


#!/bin/bash

echo "Enter the name of the first JSON file: "
read file1

echo "Enter the name of the second JSON file: "
read file2

# Check if both files exist
if [ -f "$file1" ] && [ -f "$file2" ]; then
    # Create a new file with the name "merged.json"
    filename="merged.json"

    # Merge the contents of the two files into the new file
    cat "$file1" "$file2" > "$filename"

    echo "Files merged into $filename"
else
    echo "One or both of the files do not exist."
fi

