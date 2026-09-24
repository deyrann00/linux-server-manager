#!/usr/bin/env bash
set -euo pipefail

echo "--- CPU & Memory Usage ---"
if [[ "$OSTYPE" == "darwin"* ]]; then
    top -l 1 | head -n 15
else
    top -b -n 1 | head -n 15
fi

echo "--- Disk Utilization ---"
df -h
