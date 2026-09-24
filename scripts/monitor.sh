#!/usr/bin/env bash
set -euo pipefail

echo "--- CPU & Memory Usage ---"
if [[ "$OSTYPE" == "darwin"* ]]; then
    top -l 1 | head -n 10
else
    top -b -n 1 | head -n 10
fi

echo "--- Disk Utilization ---"
df -h
