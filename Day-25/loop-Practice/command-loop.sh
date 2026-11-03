#!/bin/bash

for cmd in git curl bash xyz
do 
    if command -v "$cmd" >/dev/null 2>&1; then
        echo "$cmd is available"
    else
        echo "$cmd is missing"
    fi
done