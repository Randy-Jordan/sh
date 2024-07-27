#!/bin/bash

# Check if the folder name argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <foldername>"
    exit 1
fi

# Get the folder name from the argument
foldername="$1"

# Create the specified folder
mkdir -p "$foldername"

# Copy the required files from Athena/code
cp ~/eg/README.md "$foldername/README.md"
cp ~/eg/LICENSE_GPLV3.md "$foldername/LICENSE"

echo "Initialization complete for folder: $foldername"

