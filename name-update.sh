#!/bin/bash

# Navigate to repo (ensure you're in the right directory)
REPO_DIR="hello-world-script"
cd "$REPO_DIR" || { echo "Repository not found!"; exit 1; }

# Define names to replace "World" with
names=("Daniel" "Amanyi" "Rosemary")

# Loop through names and update hello.py
for name in "${names[@]}"; do
    # Corrected sed command for Linux
    sed -i "s/World/$name/g" hello.py  

    # Uncomment this line if using macOS (BSD sed)
    # sed -i '' "s/World/$name/g" hello.py  

    # Add, commit, and push changes
    git add hello.py
    git commit -m "Updated hello.py with name: $name"
    git push origin main
done

echo "All names updated and pushed successfully!"
