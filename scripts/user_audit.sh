#!/usr/bin/env bash
set -euo pipefail

echo "=== System User Audit ==="
echo "Active interactive shell users (UID >= 1000):"
awk -F: '($3 >= 1000) && ($7 !~ /nologin|false/) {print $1, $3, $7}' /etc/passwd

if [[ $EUID -ne 0 ]]; then
   echo "[WARN] Run as root to inspect all system authentication records."
fi
