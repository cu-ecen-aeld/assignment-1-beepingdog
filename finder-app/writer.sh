#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Run the command as ./writer.writefile writestr"
    exit 1
fi

writefile="$1"
writestr="$2"

directory=$(dirname "$writefile")

mkdir -p $directory


echo "$writestr" > "$writefile"
