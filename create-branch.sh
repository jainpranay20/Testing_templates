#!/bin/bash

# Prompt the user for their name
echo "Enter your name:"
read name

# Create a new branch based on the "content-writers" branch
branch_name="content-writer-$name"
git checkout -b $branch_name origin/content-writers

# Confirm the new branch was created
echo "New branch '$branch_name' created successfully!"

