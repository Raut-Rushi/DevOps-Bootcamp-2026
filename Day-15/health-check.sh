#!/bin/bash

echo "====SERVER HEALTH CHECK===="
echo "Date : $(date)"
echo "User : $(whoami)"

echo ""
echo "Checking essential commands..."

for cmd in ping nslookup curl
do
    if command -v "$cmd" >/dev/null 2>&1; then
        echo "$cmd : available"
    else
        echo "$cmd : not found"
    fi
done

echo ""
echo "====CHECK COMPLETE===="

# ( if command -v "$cmd" >/dev/null 2>&1; then ) → checks whether a command exists without displaying its output or errors.
# >/dev/null discards normal output , while 2>&1 redirects *error* and *output* to the same destination.

# for run:
# chmod +x health-check.sh
# ./health-check.sh



