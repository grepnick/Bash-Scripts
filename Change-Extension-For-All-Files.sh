#!/bin/bash

# Get a list of all .jpg files in the current directory
for file in *.jpg; do
  # Check if the file exists
  if [ -e "$file" ]; then
    # Construct the new filename
    new_file="${file%.*}.jpeg"
    # Rename the file
    mv "$file" "$new_file"
  fi
done
