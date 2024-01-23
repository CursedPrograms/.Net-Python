#!/bin/bash

# This is a setup script for the Python project

echo "Setting up the Python environment..."

# Add Python Scripts directory to PATH
PYTHON_SCRIPTS_DIR="C:\\Users\\YourUsername\\AppData\\Local\\Programs\\Python\\Python<version>\\Scripts"
if [ -d "$PYTHON_SCRIPTS_DIR" ]; then
    export PATH="$PATH:$PYTHON_SCRIPTS_DIR"
    echo "Added Python Scripts directory to PATH."
else
    echo "Error: Python Scripts directory not found. Make sure to update the script with the correct path."
    exit 1
fi

# Install dependencies
if command -v pip &> /dev/null; then
    echo "Installing Python dependencies..."
    pip install -r requirements.txt
else
    echo "Error: pip not found. Please install Python and pip first."
    exit 1
fi

# Run the main Python script
echo "Running main.py..."
python main.py

echo "Setup complete! You're ready to start working on your Python project."
