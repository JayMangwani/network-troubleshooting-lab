# Scenario: Intermittent connectivity (IP conflict)

## Reproduce
Give two VMs the same static IP.

## Symptoms observed
Windows warns of an IP address conflict; connectivity drops intermittently; `arp -a` shows changing MAC for the same IP.

## Isolation (which layer failed)
IP-layer: duplicate address.

## Resolution
Assign unique IPs, reserve addresses in DHCP, exclude static range from the pool.

## Evidence (add your own)
- [ ] Screenshot of the problem before the fix
- [ ] Screenshot/command output of the diagnostic step
- [ ] Screenshot/command output proving the fix worked
Save images in `evidence/` and link them here.
