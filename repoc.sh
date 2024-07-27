:#!/bin/bash

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
cp ~/eg/gitignore_c "$foldername/.gitignore"
cp ~/eg/README.md "$foldername/README.md"
cp ~/eg/Makefile "$foldername/Makefile"
cp ~/eg/LICENSE_GPLV3.md "$foldername/LICENSE"
# Create src and tests subfolders
mkdir -p "$foldername/src"
mkdir -p "$foldername/tests"
mkdir -p "$foldername/include"
# Change directory to the created folder
cd "$foldername"

# Run ctags for C (not C++)
ctags -R --c-kinds=+p --fields=+iaS --extra=+q /usr/include

echo "Initialization and ctags generation complete for folder: $foldername"

