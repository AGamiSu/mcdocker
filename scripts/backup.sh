#!/usr/bin/env bash
set -e

BACKUP_DIR="$(pwd)/backups"
DATA_DIR="$(pwd)/minecraft-data"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir -p "$BACKUP_DIR"

echo "[+] Creating backup $DATE.tar.gz"
tar -czf "$BACKUP_DIR/minecraft_$DATE.tar.gz" "$DATA_DIR"

echo "[✓] Backup completed"
