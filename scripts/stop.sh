#!/usr/bin/env bash
set -e

echo "[+] Stopping Minecraft server..."
docker compose -f docker/docker-compose.yml down
