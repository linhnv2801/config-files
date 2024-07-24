
#!/bin/bash

# Check if the argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

# Set the target directory to the first argument
target_directory="$1"

# Check if the provided argument is a directory
if [ ! -d "$target_directory" ]; then
  echo "Error: $target_directory is not a directory"
  exit 1
fi

# List all subdirectories in the target directory and interact with the user
echo "Listing and interacting with all subdirectories in $target_directory:"

# Find all subdirectories (excluding the root directory itself)
subdirectories=$(find "$target_directory" -mindepth 1 -type d)

# Check if there are any subdirectories
if [ -z "$subdirectories" ]; then
  echo "No subdirectories found in $target_directory."
  exit 0
fi

# Iterate over each subdirectory
for subdir in $subdirectories; do
  echo "Found subdirectory: $subdir"

  ./build_puml.sh $subdir
  
  # Example interaction: ask the user if they want to list files in the subdirectory
  # read -p "Do you want to list the files in this subdirectory? (y/n): " answer
  # if [[ "$answer" =~ ^[Yy]$ ]]; then
  #   echo "Listing files in $subdir:"
  #   ls -l "$subdir"
  # fi
  
  
done

