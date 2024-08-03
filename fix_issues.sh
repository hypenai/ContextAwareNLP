#!/bin/bash

# Ask for the repository URL only once
echo "Enter your GitHub repository URL:"
read repository_url

# Create a requirements.txt file if it doesn't exist
if [ ! -f "requirements.txt" ]; then
  touch requirements.txt
  echo "Please add your dependencies to requirements.txt and press Enter when done"
  read -p ""
fi

# Create a ContextAwareNLP.py file if it doesn't exist
if [ ! -f "ContextAwareNLP.py" ]; then
  touch ContextAwareNLP.py
  echo "Please add your Python script to ContextAwareNLP.py and press Enter when done"
  read -p ""
fi

# Run the original script with the provided repository URL
./right_setup.sh $repository_url
