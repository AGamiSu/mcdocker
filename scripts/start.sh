
#!/usr/bin/env bash
set -e

echo "[+] Starting Minecraft server..."
docker compose -f docker/docker-compose.yml up -d

chmod +x scripts/start.sh
