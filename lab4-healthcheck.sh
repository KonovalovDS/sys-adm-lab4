#!/usr/bin/env bash

URL="http://localhost:8000"

status=$(curl -s -o /dev/null -w "%{http_code}" $URL)

if [ "$status" -eq 200 ]; then
    echo "OK"
    exit 0
else
    echo "FAIL"
    exit 1
fi
