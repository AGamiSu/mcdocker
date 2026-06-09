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
