#!/bin/bash

# Check if the required arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <repository_name> <commit_message>"
    exit 1
fi

# Assign input arguments to variables
repository_name="$1"
commit_message="$2"

# Create README.md with the repository name
echo "# $repository_name" >> README.md

# Initialize a git repository
git init

# Add all files in the current directory
git add .

# Commit with the provided commit message
git commit -m "$commit_message"

# Set the main branch
git branch -M main

# Add the remote repository
git remote add origin "git@github.com:YourUserName/$repository_name.git"

# Push to the main branch
git push -u origin main

echo "Repository setup complete."
