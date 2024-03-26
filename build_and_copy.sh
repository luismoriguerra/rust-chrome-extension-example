#!/bin/bash

# Define the path to the Chrome extension directory
EXT_DIR="./chrome_extension"

# Ensure the script exits on any error
set -e

# Check if the Chrome extension directory exists, and create it if it doesn't
if [ ! -d "$EXT_DIR" ]; then
    echo "Creating Chrome extension directory..."
    mkdir -p "$EXT_DIR"
fi

# Copy the static files (manifest.json and background.js) into the extension directory
echo "Copying static files..."
cp static/manifest.json "$EXT_DIR/manifest.json"
cp static/background.js "$EXT_DIR/background.js"

# Execute the Makefile
echo "Building Rust project and copying files..."
make all

echo "Build and copy process complete. The Chrome extension is ready in $EXT_DIR."
