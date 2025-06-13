#!/bin/bash
set -e
ROOT_DIR="$(dirname "$0")/../"

echo "🔍 Formatting and linting codebase..."
ruff check $ROOT_DIR --fix

echo "🔍 Running type checking..."
mypy --follow-untyped-imports --exclude .direnv $ROOT_DIR

echo "✅ Formatting and linting complete!"
ruff format $ROOT_DIR