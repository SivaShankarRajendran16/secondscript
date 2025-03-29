#!/bin/bash

FILE="input.txt"

awk 'NR<5 {print; next} /welcome/ {gsub(/give/, "learning")} {print}' "$FILE" > temp.txt && mv temp.txt "$FILE"

echo "Replacement completed in $FILE"
