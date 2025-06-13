#!/bin/bash
set -e
ROOT_DIR="$(dirname "$0")/.."

# Check if a command was provided.
if [ $# -eq 0 ]; then
    echo "Error: No command provided"
    echo "Usage: op_run.sh <command> [args...]"
    exit 1
fi

# log in to 1password if signed out. 
op whoami || eval $(op signin)

# Execute the command using op run
echo "🔐 Running command with 1Password environment variables..."
echo "op run --env-file="$ROOT_DIR/.env" -- $@"
op run --env-file="$ROOT_DIR/.env" --no-masking -- "$@" 