#!/bin/bash

# File to block
BLOCKED_FILE=".github/CODEOWNERS"

# Check if the blocked file is staged for commit
if git diff --cached --name-only | grep -q "$BLOCKED_FILE"; then
  echo "Error: $BLOCKED_FILE is blocked from being committed."
  exit 1
fi

# Allow commit if blocked file is not staged
exit 0
