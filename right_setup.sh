#!/bin/bash

# Get the repository URL from the argument
REPO_URL=$1

# Start the new setup
if [ ! -d ".git" ]; then
  git init
fi

if [ ! -z "$(git branch --list main)" ]; then
  git checkout main
else
  git checkout -b main
fi

git add .
git commit -m "Initial commit"

if [ ! -z "$(git remote --list origin)" ]; then
  git remote set-url origin $REPO_URL
else
  git remote add origin $REPO_URL
fi

git push -u origin main

# Install dependencies
pip install -r requirements.txt

# Build the executable using PyInstaller
pyinstaller --onefile ContextAwareNLP.py

# Make the executable file executable
chmod +x dist/ContextAwareNLP
