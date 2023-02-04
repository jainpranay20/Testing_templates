#!/bin/bash

echo "Enter Feature Identifier (5 alphanumeric characters only): "
read feature_identifier

while [[ ! "$feature_identifier" =~ ^[a-zA-Z0-9]{5}$ ]]; do
  echo "Invalid input. Enter feature_identifier (5 alphanumeric characters only): "
  read feature_identifier
done

echo "Enter Mock UI Link (URL only): "
read ui_link

while [[ ! "$ui_link" =~ ^https://www.[a-zA-Z0-9]+\.[a-zA-Z0-9]+ ]]; do
  echo "Invalid input. Enter UI (URL only): "
  read ui_link
done

echo "Enter Customer Property (8 digit number only): "
read customer_property

while [[ ! "$customer_property" =~ ^[0-9]{8}$ ]]; do
  echo "Invalid input. Enter cp (8 digit number only): "
  read customer_property
done

echo "Enter Type 1 for workflow and 2 for feature : "
read type

# Check if TY is either "workflow" or "feature"
if [ "$type" == "1" ]; then
    choice="workflow"
elif [ "$type" == "2" ]; then
    choice="feature"
else
  echo "Type is invalid. It must be either 'workflow' or 'feature'."
  exit 1
fi


echo "Enter Release Version (numbers only): "
read version

echo "Enter Portal Menu (home, security, devices, users): "
read portal_menu

while [[ "$portal_menu" != "home" && "$portal_menu" != "security" && "$portal_menu" != "devices" && "$portal_menu" != "users" ]]; do
  echo "Invalid input. Enter portal menu  "
  read portal_menu
done

echo "Enter your heading: "
read heading

# Create a file with the name and version entered by the user
filename="$version-$heading-dev.json"


# Write the information in JSON format to the file

echo "{" > "$filename"
echo "\"feature_identifier\":\"$feature_identifier\"," >> "$filename"
echo "\"ui_link\":\"$ui_link\"," >> "$filename"
echo "\"customer_property\":\"$customer_property\"," >> "$filename"
echo "\"type\":\"$choice\"," >> "$filename"
echo "\"portal_menu\":\"$portal_menu\"" >> "$filename"
echo "}" >> "$filename"

echo "Information stored in $filename"

