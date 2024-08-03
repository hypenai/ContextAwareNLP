#!/bin/bash

# Get the repository URL from the argument
REPO_URL=$1

# Start the new setup
git init
git checkout -b main
git add .
git commit -m "Initial commit"
git remote add origin $REPO_URL
git push -u origin main

# Install dependencies
pip install -r requirements.txt

# Build the executable using PyInstaller
pyinstaller --onefile ContextAwareNLP.py

# Make the executable file executable
chmod +x dist/ContextAwareNLP
