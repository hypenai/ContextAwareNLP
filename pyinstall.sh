#!/bin/bash

# Set the name of your app
APP_NAME="ContextAwareNLP"

# Set the entry point of your app (the main Python script)
ENTRY_POINT="app.py"

# Set the output directory for the executable
OUTPUT_DIR="dist"

# Create the output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Run PyInstaller to create the executable
pyinstaller --onefile --windowed --name "$APP_NAME" "$ENTRY_POINT" --distpath "$OUTPUT_DIR"
