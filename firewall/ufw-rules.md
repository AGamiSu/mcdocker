# UFW Firewall Rules

This server is intentionally **not accessible via LAN or WAN**.

## Default policy

- deny incoming
- allow outgoing

## Allowed interfaces

- lo (loopback)
- zt+ (ZeroTier)

## Example rules

```bash
ufw default deny incoming
ufw allow in on zt+ to any
ufw allow in on lo
ufw enable
```

All other inbound traffic is blocked.
---

# `zerotier/setup.md`

```md
# ZeroTier Setup
```
This server is reachable only via a private ZeroTier network.

## Steps

1. Install ZeroTier
2. Join private network
3. Author device in ZeroTier Central
4. Verify interface is created (ztXXXX)

```bash
ip a | grep zt
```
