#!/bin/bash

echo "Enter your name: "
read name

echo "Enter your heading: "
read heading

echo "Enter your description: "
read description

# Create a file with the name entered by the user
filename="$name.txt"

# Write the information to the file
echo "Name: $name" > "$filename"
echo "Heading: $heading" >> "$filename"
echo "Description: $description" >> "$filename"

echo "Information stored in $filename"

