#!/bin/bash

# Task 1: Check HTTP error code for guvi.in
URL="https://www.guvi.in"
HTTP_CODE=$(curl -o /dev/null -s -w "%{http_code}\n" "$URL")

echo "HTTP Status Code: $HTTP_CODE"

if [[ "$HTTP_CODE" -ge 200 && "$HTTP_CODE" -lt 300 ]]; then
    echo "Success: Website is reachable"
else
    echo "Failure: Website returned an error"
fi
