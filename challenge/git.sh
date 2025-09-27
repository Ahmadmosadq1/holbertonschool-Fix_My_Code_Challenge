#!/bin/bash

# Check if at least 2 arguments are provided
if [ $# -lt 2 ]; then
  echo "Usage: $0 <filename> <commit message>"
  exit 1
fi

# First argument is the filename
filename=$1

# Shift removes the first argument so $@ now holds the commit message
shift
commit_msg="$*"

# Add the file
git add "$filename"

# Commit with the message
git commit -m "$commit_msg"

# Push to current branch
git push

