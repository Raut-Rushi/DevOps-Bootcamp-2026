#!/bin/bash

filename="$1"

if [ -z "$filename" ]; then
    echo "Usage: bash file-check.sh <filename>"
    exit 1

elif [ -f "$filename" ]; then 
    echo "file exist : $filename"

else 
    echo "file does not exist : $filename"

fi