#!/bin/bash

echo "Enter the version of your file: "
read version

echo "Enter your heading: "
read heading

echo "Enter your description: "
read description

echo "Enter your artifact URL: "
read artifact

# Create a file with the name and version entered by the user
filename="$version-$heading.json"

# Write the information in JSON format to the file
echo "{" > "$filename"
echo "\"version\":\"$version\"," >> "$filename"
echo "\"heading\":\"$heading\"," >> "$filename"
echo "\"description\":\"$description\"," >> "$filename"
echo "\"artifact\":\"$artifact\"" >> "$filename"
echo "}" >> "$filename"

echo "Information stored in $filename"

