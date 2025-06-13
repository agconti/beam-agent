#!/bin/bash
set -e
SCRIPT_DIR="$(dirname "$0")"

$SCRIPT_DIR/op_run.sh docker compose build