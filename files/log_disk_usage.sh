#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <output_file>"
  exit 1
fi

OUTPUT_FILE="$1"

while true; do
  echo "$(date '+%Y-%m-%d %H:%M:%S') - Free space: $(df -h / | awk 'NR==2 {print $4}')" >> "$OUTPUT_FILE"
  sleep 60
done
