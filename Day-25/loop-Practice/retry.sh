#!/bin/bash 

count=1

while [ "$count" -le 3 ]
do 
    echo "retry $count"
    count=$((count + 1))

done