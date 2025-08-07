#!/bin/bash

NOTEBOOK_DIR=./_agent.RAAN/notebook

# TODO: Use claude-code to build the notebook
# This script is intended to build the notebook by running the necessary commands
# and ensuring that all dependencies are installed and the environment is set up correctly.

echo "🔨 Building the notebook..."
echo "📁 Notebook directory: $NOTEBOOK_DIR"

# Ensure the notebook directory exists
if [ ! -d "$NOTEBOOK_DIR" ]; then
  echo "❌ Notebook directory does not exist: $NOTEBOOK_DIR"
  exit 1
fi

# get metadata from flags or stdin
if [ -z "$1" ]; then
  echo "Please provide the metadata as a JSON string."
  exit 1
fi
METADATA="$1"
