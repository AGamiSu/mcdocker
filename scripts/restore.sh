#!/usr/bin/env bash
set -e

if [ -z "$1" ]; then
  echo "Usage: ./restore.sh <backup-file>"
  exit 1
fi

echo "[!] Restoring backup: $1"
docker stop mc || true
rm -rf minecraft-data
tar -xzf "$1"
docker start mc

echo "[✓] Restore completed"
