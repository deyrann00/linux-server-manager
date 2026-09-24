#!/usr/bin/env bash
set -euo pipefail

echo "--- CPU & Memory Usage ---"
top -b -n 1 | head -n 20

echo "--- Disk Utilization ---"
df -h --output=source,size,used,avail,pcent,target -x tmpfs -x devtmpfs
rm -rf /var/log/*
