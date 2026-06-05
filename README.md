# mcdocker
Secure Private Minecraft Server (Docker + ZeroTier)

## Overview

This repository documents the setup and operation of a **private, non-public Minecraft server** running inside Docker.

The server:
- has **no open public ports**
- is reachable **only via ZeroTier**
- survives restarts and container recreation
- stores world and player data persistently on the host

The goal of this project is to demonstrate **secure service deployment, networking isolation, and operational reliability**.


## Stack

- **[Docker]** — containerized service runtime
- **[ZeroTier]** — private overlay network
- UFW — host-based firewall
- Linux (Ubuntu Server)
- Minecraft Java Edition (Vanilla, Paper-ready)

## Architecture

```text
Client
  │
  └── ZeroTier private network
           │
        Host firewall (UFW)
           │
     Docker container
           │
     Minecraft Server
```


## Key Features

```md
- No public IP exposure
- No port forwarding
- Access restricted to ZeroTier network
- Persistent world and player inventories
- Safe restarts and updates
- Container recreation without data loss
- Firewall rules bound to specific interfaces
```
## Data Persistence

All server data is stored outside the container on the host system.

```text
minecraft-data/
└── world/
    ├── playerdata/
    ├── advancements/
    ├── stats/
    └── region/
 ```

---

## Deployment
The server is deployed using Docker.

```bash
docker compose up -d
```

## Operations

### View server logs

```bash
docker logs mc
```
### Restart server
```bash
docker restart mc
```
### Check connected players
```bash
docker exec mc rcon-cli list
```
### Send message to players
```bash
docker exec mc rcon-cli say "Server restart in 5 minutes"
```


## Security Model

- Default deny inbound firewall policy

- SSH bound to ZeroTier interface only

- Minecraft port accessible only inside overlay network

- No LAN or WAN access

- No exposed management interfaces

This prevents unauthorized access even if the host is reachable from the internet.






## Disclaimer

This project is intended for **infrastructure and DevOps demonstration purposes**.
It is not designed for public or commercial hosting.
