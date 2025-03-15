#!/bin/bash

# Set repo URL and directory
REPO_URL="https://github.com/DanielAmanyi/hello-world-script.git"
DIR_NAME="hello-world-script"

# Clone the repo if it doesn't exist, otherwise pull the latest changes
if [ ! -d "$DIR_NAME" ]; then
    echo "Cloning repository..."
    git clone "$REPO_URL"
else
    echo "Repository exists. Pulling latest changes..."
    cd "$DIR_NAME" #|| exit
    git pull origin main
fi

# Navigate to repo directory
cd "$DIR_NAME" #|| exit

# Run the Python script
echo "Running hello.py..."
python3 hello.py

