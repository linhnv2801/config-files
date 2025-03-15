#!/bin/bash

# Check if search text is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <search_text>"
    exit 1
fi


search_text=$1

# Fetch remote branches
echo "Fetching remote branches..."
git fetch --all

# Search in all branches (local and remote)
echo "Searching in branches..."
for branch in $(git for-each-ref --format '%(refname:short)' refs/heads/ refs/remotes/); do
    echo "Branch: $branch"

    git grep -n "$search_text" "$branch" -- || echo "No results in branch: $branch"
    echo
done

# Search in all tags
# echo "Searching in tags..."
# for tag in $(git tag); do
#     echo "Tag: $tag"
#     git grep -n "$search_text" "$tag" -- || echo "No results in tag: $tag"
#     echo
# done

