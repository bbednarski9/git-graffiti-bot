#!/bin/bash

# Define the path to the credentials file
CREDENTIALS_FILE="./credentials.conf"

# Check if the credentials file exists and is readable
if [ -f "$CREDENTIALS_FILE" ] && [ -r "$CREDENTIALS_FILE" ]; then
    # Source credentials and configuration
    source "$CREDENTIALS_FILE"
else
    # Print error message and exit
    echo "Error: Cannot find or read the credentials file at $CREDENTIALS_FILE."
    exit 1
fi

# Navigate to the Git repository
cd $REPO_PATH

# Optional: Pull the latest changes from the repository using the stored credentials
git -c http.extraHeader="Authorization: token $AUTH_TOKEN" pull

# Create or update a file
echo "Commit on $(date)" >> $WALL_FNAME

# Add changes to git
git add $WALL_FNAME

# Commit changes
git commit -m "Automatic commit on $(date)"

# Push changes using the stored credentials
git -c http.extraHeader="Authorization: token $AUTH_TOKEN" push

