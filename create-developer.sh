#!/bin/bash

echo "Enter Feature Identifier (5 alphanumeric characters only): "
read fi

while [[ ! "$fi" =~ ^[a-zA-Z0-9]{5}$ ]]; do
  echo "Invalid input. Enter field fi (5 alphanumeric characters only): "
  read fi
done

echo "Enter Mock UI Link (URL only): "
read ui

while [[ ! "$ui" =~ ^https://www.[a-zA-Z0-9]+\.[a-zA-Z0-9]+ ]]; do
  echo "Invalid input. Enter field ui (URL only): "
  read ui
done

echo "Enter Customer Property (8 digit number only): "
read cp

while [[ ! "$cp" =~ ^[0-9]{8}$ ]]; do
  echo "Invalid input. Enter field cp (8 digit number only): "
  read cp
done

echo "Enter Type 1 for workflow and 2 for feature : "
read ty

# Check if TY is either "workflow" or "feature"
if [ "$ty" == "1" ]; then
    choice="workflow"
elif [ "$ty" == "2" ]; then
    choice="feature"
else
  echo "TY is invalid. It must be either 'workflow' or 'feature'."
  exit 1
fi


echo "Enter Release Version (numbers only): "
read rv

echo "Enter Portal Menu (home, security, devices, users): "
read pm

while [[ "$pm" != "home" && "$pm" != "security" && "$pm" != "devices" && "$pm" != "users" ]]; do
  echo "Invalid input. Enter field pm (h1, h2, h3, or h4 only): "
  read pm
done

echo "Enter your heading: "
read heading

# Create a file with the name and version entered by the user
filename="$rv-$heading-dev.json"


# Write the information in JSON format to the file

echo "{" > "$filename"
echo "\"fi\":\"$fi\"," >> "$filename"
echo "\"ui\":\"$ui\"," >> "$filename"
echo "\"cp\":\"$cp\"," >> "$filename"
echo "\"ty\":\"$choice\"," >> "$filename"
echo "\"rv\":\"$rv\"," >> "$filename"
echo "\"pm\":\"$pm\"" >> "$filename"
echo "}" >> "$filename"

echo "Information stored in $filename"

