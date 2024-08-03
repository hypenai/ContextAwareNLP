#!/bin/bash

# Set the name of your app
APP_NAME="ContextAwareNLP"

# Set the entry point of your app (the main Python script)
ENTRY_POINT="app.py"

# Set the output directory for the executable
OUTPUT_DIR="dist"

# Create the output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Initialize Git repository if it doesn't exist
if [ ! -d ".git" ]; then
  git init
  git add .
  git commit -m "Initial commit"
fi

# Install core dependencies
pip install --upgrade \
  pyinstaller \
  pyqt5 \
  sqlite3 \
  requests \
  threading \
  loguru \
  configparser

# Install additional dependencies
pip install --upgrade \
  plyer \
  python-dotenv \
  pyyaml \
  pandas \
  numpy \
  scikit-learn

# Update requirements.txt file
pip freeze > requirements.txt

# Commit updated requirements.txt file to Git
git add requirements.txt
git commit -m "Update requirements.txt"

# Create a standalone executable using PyInstaller
pyinstaller --onefile --windowed --name "$APP_NAME" "$ENTRY_POINT" --distpath "$OUTPUT_DIR"

# Create a desktop shortcut (optional)
ln -s "$OUTPUT_DIR/$APP_NAME" ~/Desktop/
