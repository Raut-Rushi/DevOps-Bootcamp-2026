#!/bin/bash

cmd="$1"

if [ -z "$cmd" ]; then
    echo "Usage: bash command-check.sh <command>"
    exit 1

elif command -v "$cmd" >/dev/null 2>&1; then
    echo "$cmd is installed"

else 
    echo "$cmd is not installed or not in PATH"
    exit 1

fi