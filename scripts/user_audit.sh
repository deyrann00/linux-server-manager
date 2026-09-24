#!/usr/bin/env bash
set -euo pipefail

echo "=== System User Audit ==="
echo "Active interactive shell users (UID >= 1000):"
awk -F: '($3 >= 1000) && ($7 !~ /nologin|false/) {print $1, $3, $7}' /etc/passwd
