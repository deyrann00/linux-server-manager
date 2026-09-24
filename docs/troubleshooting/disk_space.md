# Troubleshooting High Disk Usage

1. Identify full partitions: df -h
2. Find top 10 largest directories: du -ahx / | sort -rh | head -n 10
3. Clear systemd journal logs: journalctl --vacuum-time=3d
